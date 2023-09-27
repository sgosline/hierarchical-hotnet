FROM python:3.5-buster
RUN apt update
RUN apt-get install gfortran parallel -y
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY src ./src
COPY examples ./examples
