FROM python:3.7
COPY . /server
WORKDIR /server
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT server:app
