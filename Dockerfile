FROM python:3

COPY . .

RUN pip install -r requiremnets.tx

CMD ["python", "app.py"]
