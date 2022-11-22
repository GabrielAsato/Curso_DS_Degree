FROM python:3.10

RUN mkdir /data
WORKDIR /data
ADD train.py . 
ADD requirements.txt . 

RUN pip install -r requirements.txt

CMD python train.py