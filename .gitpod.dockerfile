FROM gitpod/workspace-postgresql

# RUN sudo apt-get update \
#   && sudo apt-get install -y \
#   python \
#   && sudo rm -rf /var/lib/apt/lists/*

RUN pyenv update && pyenv install 3.11.0 && pyenv local 3.11.0
COPY requirements.txt $HOME/
RUN pip install --no-cache-dir -r requirements.txt
ENV DATABASE_URL=postgresql://localhost/poll
