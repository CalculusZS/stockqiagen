
# Dockerfile for Parts Web App (Flask)
FROM python:3.11-slim
ENV PYTHONDONTWRITEBYTECODE=1     PYTHONUNBUFFERED=1
WORKDIR /app
# System deps for pandas/openpyxl
RUN apt-get update && apt-get install -y --no-install-recommends     build-essential gcc libpq-dev     && rm -rf /var/lib/apt/lists/*
# Copy requirements
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
# Copy app
COPY . /app
# Create data dir
RUN mkdir -p /app/data
# Expose port
EXPOSE 8000
# Start with Gunicorn (Prod)
CMD ["gunicorn", "wsgi:app", "--bind", "0.0.0.0:8000", "--workers", "3", "--timeout", "120"]
