FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt setup.py ./
RUN pip install --no-cache-dir .
COPY homework/ ./homework/
COPY data/    ./data/
ENTRYPOINT ["python", "-m", "homework"]
CMD ["data/input", "data/output"]
