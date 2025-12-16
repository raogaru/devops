FROM python:3.11-alpine

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN apk add --no-cache libpq 

RUN python -m pip install --upgrade pip \
 && python -m pip install psycopg2-binary pyyaml

RUN mkdir -p /app/bin
RUN mkdir -p /app/scripts
RUN mkdir -p /app/data

WORKDIR /app

COPY tabgen.py /app/bin
COPY sample_tabgen.yaml /app/tabgen.yaml

COPY jobrun.py /app/bin
COPY sample_jobrun.yaml /app/jobrun.yaml

COPY csvgen.py /app/bin
COPY sample_csvgen.yaml /app/csvgen.yaml

RUN chmod +x /app/bin/*.py

ENV PATH="/app/bin:$PATH"

CMD ["/bin/bash"]

