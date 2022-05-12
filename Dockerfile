FROM python:3.10-slim-bullseye
RUN useradd -U -m -d /app freedom
USER freedom
WORKDIR /app
ADD --chown=freedom:freedom . .
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "/app/huami_token.py"]
CMD ["--help"]
