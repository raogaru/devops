import os
import zmq
import time
import json

SEND_DIR = "/data/send"
SEQ_FILE = "/data/send/sequence.txt"
CHUNK_SIZE = 4 * 1024 * 1024

receiver_host = os.getenv("RECEIVER_HOST", "receiver")
receiver_port = os.getenv("RECEIVER_PORT", "5555")

def log(msg):
    print(json.dumps({"ts": time.time(), "app": "sender", "msg": msg}))

def load_sequence():
    if not os.path.exists(SEQ_FILE):
        return 1
    return int(open(SEQ_FILE).read().strip())

def save_sequence(seq):
    with open(SEQ_FILE, "w") as f:
        f.write(str(seq))

context = zmq.Context()
socket = context.socket(zmq.PUSH)
socket.connect(f"tcp://{receiver_host}:{receiver_port}")

def send_file(filepath):
    filename = os.path.basename(filepath)
    seq = load_sequence()
    save_sequence(seq + 1)

    filesize = os.path.getsize(filepath)

    log({"status": "NEW_FILE_IDENTIFIED", "file": filename})
    log({"status": "FILE_SIZE_IDENTIFIED", "size": filesize})
    log({"status": "SEQ_ASSIGNED", "seq": seq})

    with open(filepath, "rb") as f:
        offset = 0
        log({"status": "TRANSFER_START", "seq": seq})

        while True:
            chunk = f.read(CHUNK_SIZE)
            if not chunk:
                break

            message = {
                "seq": seq,
                "filename": filename,
                "offset": offset,
                "total_size": filesize,
                "is_last": False,
            }

            socket.send_multipart([json.dumps(message).encode(), chunk])
            offset += len(chunk)

        # send final packet
        message["is_last"] = True
        socket.send_multipart([json.dumps(message).encode(), b""])

    log({"status": "TRANSFER_COMPLETE", "seq": seq})

def main():
    while True:
        for f in os.listdir(SEND_DIR):
            full = os.path.join(SEND_DIR, f)
            if os.path.isfile(full):
                send_file(full)
                time.sleep(1)
        time.sleep(5)

if __name__ == "__main__":
    main()

