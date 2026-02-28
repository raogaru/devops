FROM python:3.11-alpine

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN apk add --no-cache libpq 

RUN python -m pip install --upgrade pip \
 && python -m pip install psycopg2-binary pyyaml psycopg[binary] psycopg_pool rich

RUN mkdir -p /app/bin
RUN mkdir -p /app/scripts
RUN mkdir -p /app/data

WORKDIR /app

COPY tabgen.py /app/bin
COPY tabgen.yaml /app/

COPY jobrun.py /app/bin
COPY jobrun.yaml /app/

COPY csvgen.py /app/bin
COPY csvgen.yaml /app/

COPY csvgen2.py /app/bin
COPY csvgen2.yaml /app/

COPY pgdatacomp.py /app/bin
COPY pgdatacomp.yaml /app/

COPY csvstats.py /app/bin

COPY proccall_gencfg.py /app/bin

COPY proccall.py /app/bin
COPY proccall.yaml /app

COPY splitsql.py /app/bin

RUN chmod +x /app/bin/*.py

ENV PATH="/app/bin:$PATH"

CMD ["/bin/bash"]

