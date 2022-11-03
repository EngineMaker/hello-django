FROM gitpod/workspace-postgresql

RUN sudo apt-get update \
  && sudo apt-get install -y \
  python \
  && sudo rm -rf /var/lib/apt/lists/*

COPY requirements.txt /code/
RUN pip install --no-cache-dir -r requirements.txt
