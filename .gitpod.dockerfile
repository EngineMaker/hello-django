FROM gitpod/workspace-postgresql

# RUN sudo apt-get update \
#   && sudo apt-get install -y \
#   python \
#   && sudo rm -rf /var/lib/apt/lists/*

RUN pyenv update && pyenv install 3.11.0 && pyenv local 3.11.0
ENV DATABASE_URL=postgresql://localhost/poll
