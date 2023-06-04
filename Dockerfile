FROM python:3.11

WORKDIR /usr/src/app

COPY backend/requirements.txt /usr/src/app

RUN pip install --upgrade pip && pip install -r /usr/src/app/requirements.txt

EXPOSE 8080

COPY ./backend/ /usr/src/app

CMD ["python", "main.py"]