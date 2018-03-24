FROM python:3.6.4-alpine3.7

ENV PYTHONUNBUFFERED 1

RUN mkdir /project

WORKDIR /project

# ADD requirements.txt /project/requirements.txt
# ADD requirements_dev.txt /project/requirements_dev.txt

# RUN pip install -r requirements_dev.txt

ADD . /project/

CMD python manage.py migrate --noinput; python manage.py runserver 0.0.0.0:8000
