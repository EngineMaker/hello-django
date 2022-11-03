FROM python:3.11.0
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV RENDER=true

# node
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash
RUN apt update && apt install -y nodejs && rm -rf /var/lib/apt/lists/*

WORKDIR /code
COPY docker/prod/start.sh /code/
COPY requirements.txt /code/
RUN pip install --use-pep517 -r requirements.txt
COPY . /code/
