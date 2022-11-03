FROM gitpod/workspace-full

#COPY requirements.txt /code/
RUN pip install --no-cache-dir -r requirements.txt
