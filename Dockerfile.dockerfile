FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ ./src/
COPY notebooks/ ./notebooks/

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]

