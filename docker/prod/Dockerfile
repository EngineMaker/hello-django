FROM python:3.11.0
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV RENDER=true
WORKDIR /code
COPY docker/prod/start.sh /code/
RUN pip install -r requirements.txt
COPY . /code/
