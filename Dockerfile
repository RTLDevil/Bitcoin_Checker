FROM python:alpine3.19
WORKDIR /opt/source-code
COPY . .

RUN pip install -r requirements.txt

ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 5000
ENTRYPOINT ["flask", "run"]