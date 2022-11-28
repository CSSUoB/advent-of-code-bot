FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ./src .

RUN groupadd -r adventofcode && useradd --no-log-init -r -g adventofcode adventofcode
USER adventofcode

CMD [ "python3", "main.py" ]

