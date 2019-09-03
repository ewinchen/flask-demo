FROM python:3.7-alpine

WORKDIR /usr/src/app

COPY setup.py ./

RUN pip install -e .

COPY . .

ENV FLASK_APP flaskr

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]

RUN ["flask", "init-db"]