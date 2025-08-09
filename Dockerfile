#This is my Dockerfile
FROM python:3

COPY . .

CMD ["python", "app.py"]
