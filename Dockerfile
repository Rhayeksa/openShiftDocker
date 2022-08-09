FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

ENV PYTHONPATH "${PYTHONPATH}:/"
ENV PORT=8080

# RUN python -m venv venv
# RUN source venv/bin/active

RUN pip install --upgrade pip

COPY ./requirements.txt /app/

RUN pip install -r requirements.txt

COPY ./app /app
