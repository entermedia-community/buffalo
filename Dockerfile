FROM python:3.8.12

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 -y

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "sh", "entrypoint.sh" ]