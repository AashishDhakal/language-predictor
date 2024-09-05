FROM python:3.9-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends wget build-essential gcc g++ cmake && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
COPY entrypoint.sh .
RUN pip install setuptools
RUN pip install -r requirements.txt

RUN chmod +x /app/entrypoint.sh

COPY . .

EXPOSE 3000

ENTRYPOINT ["sh", "/app/entrypoint.sh"]
