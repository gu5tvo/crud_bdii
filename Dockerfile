
FROM python:3.10


WORKDIR /app


COPY app/requirements.txt /app/requirements.txt


RUN pip install --no-cache-dir -r requirements.txt


COPY app /app


CMD ["python", "main.py"]
