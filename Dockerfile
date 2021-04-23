FROM python:alpine
RUN apk update && apk upgrade \
    && apk --no-cache add git build-base gcc musl-dev libffi-dev openssl-dev && pip install --upgrade pip \
	&& pip install --no-cache-dir pytz faster-than-requests flask gunicorn gevent redis dnspython Flask-PyMongo pybase64 cryptography flask-caching \
	&& apk del gcc libressl-dev musl-dev libffi-dev
CMD ["python"]
