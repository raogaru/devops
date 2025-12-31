import os
import zmq
import json
import time

RECV_DIR = "/data/recv"

def log(msg):
    print(json.dumps({"ts": time.time(), "app": "receiver", "msg": msg}))

context = zmq.Context()
socket = context.socket(zmq.PULL)
socket.bind("tcp://0.0.0.0:5555")

files = {}  
# Example: files[seq] = {"path": "...", "fh": <file>, "received": 0, "total": N}

while True:
    meta_bytes, chunk = socket.recv_multipart()
    meta = json.loads(meta_bytes)

    seq = meta["seq"]
    filename = meta["filename"]
    is_last = meta["is_last"]
    total_size = meta["total_size"]

    if seq not in files:
        log({"status": "SEQ_NEW", "seq": seq})
        outfile = os.path.join(RECV_DIR, f"{seq}_{filename}")
        fh = open(outfile, "wb")
        files[seq] = {"path": outfile, "fh": fh, "received": 0, "total": total_size}
        log({"status": "RECV_START", "seq": seq})

    f = files[seq]
    if chunk:
        f["fh"].write(chunk)
        f["received"] += len(chunk)

    if is_last:
        f["fh"].close()
        log({"status": "RECV_COMPLETE", "seq": seq})
        del files[seq]

