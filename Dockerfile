FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
# . represent all admin folder to app
COPY . /app
#we can the server on port 8000 and we need to map it in compose file
CMD python manage.py runserver 0.0.0.0:8000