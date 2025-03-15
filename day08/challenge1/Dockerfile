#FROM python:3.9

#WORKDIR /app

#COPY app.py /app

#CMD ["python","app.py"]


###
from python:3.9

WORKDIR /app

COPY main.py /app/main.py

RUN pip install flask

EXPOSE 8080
CMD ["python", "main.py"]

