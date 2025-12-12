FROM python:3.11-alpine

WORKDIR /app

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN apk add --no-cache libpq 

RUN python -m pip install --upgrade pip \
 && python -m pip install psycopg2-binary pyyaml

COPY tabgen.py /app/
COPY tabgen.yaml /app/

COPY taskrun.py /app/
COPY job.yaml /app/

RUN mkdir -p /app/jobs

CMD ["/bin/bash"]

