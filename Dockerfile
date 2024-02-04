FROM ubuntu:16.04

MAINTAINER Your Name "rmha2020@mymail.pomona.edu"

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev



# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install --upgrade pip==20.3.4 && \
    pip3 install -r requirements.txt

COPY . /app

EXPOSE 1363

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]
