FROM python:alpine
RUN apk update && apk upgrade \
    && apk --no-cache add git build-base gcc musl-dev libffi-dev openssl-dev rust cargo \
	&& python3 -m pip install -U pip \
	&& pip3 install --upgrade --no-cache-dir pytz requests flask gunicorn gevent redis dnspython Flask-PyMongo pybase64 cryptography flask-caching
CMD ["python3"]
