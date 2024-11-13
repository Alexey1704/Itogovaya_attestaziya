ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION}-slim
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY --chmod=744 python.py ./
COPY data.csv ./
ENTRYPOINT [ "python" ]
CMD [ "python.py" ]
