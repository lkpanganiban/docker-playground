# FROM davidjfelix/python3.5
FROM python:3.5-alpine

MAINTAINER Ian Panganiban version: 0.1

COPY code /src

RUN apk add --update curl gcc g++ \
    && rm -rf /var/cache/apk/*

RUN ln -s /usr/include/locale.h /usr/include/xlocale.h

RUN pip install numpy

ENTRYPOINT ["python3", "/src/run.py"]
