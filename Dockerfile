FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .
COPY templates/ templates/
COPY . .

EXPOSE 80
CMD ["python", "app.py"]
