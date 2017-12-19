FROM python:2
MAINTAINER Ron Rivera <ronald.rivera@gmail.com>

RUN apt-get update && apt-get install -qq -y build-essential --no-install-recommends

WORKDIR /opt

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD python /opt/app/app.py

EXPOSE 5000
