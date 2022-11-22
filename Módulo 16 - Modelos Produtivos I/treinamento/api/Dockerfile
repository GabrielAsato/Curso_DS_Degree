FROM python:3.10

RUN mkdir /api
WORKDIR /api

ADD requirements.txt .

RUN pip install -r requirements.txt

ADD app.py .

CMD flask --app app run --host=0.0.0.0