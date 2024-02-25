FROM python:3.8

WORKDIR /app_render

COPY . /app_render

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=app_render.py

CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
