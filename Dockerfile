FROM python:3.9-alpine

RUN apk add --no-cache --update \
    python3 python3-dev gcc \
    gfortran musl-dev g++ \
    libffi-dev openssl-dev \
    libxml2 libxml2-dev \
    libxslt libxslt-dev \
    libjpeg-turbo-dev zlib-dev

RUN pip install --upgrade pip
RUN apt-get install -y libmysqlclient-dev

ADD requirements.txt .
RUN pip install -r requirements.txt
