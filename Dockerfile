#This is my Dockerfile
FROM python:3

COPY . .

CMD ["python", "app.py", "0.0.0.0:8000]
