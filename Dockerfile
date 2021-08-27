FROM python:alpine

ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

# ADD . /usr/src/app/

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./manage.py", "runserver", "0.0.0.0:8000" ]

EXPOSE 8000