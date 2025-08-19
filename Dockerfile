FROM python:3.11-slim

RUN pip install uv

EXPOSE $PORT

CMD ["sh", "-c", "uvx awslabs.aws-api-mcp-server@latest --host 0.0.0.0 --port ${PORT:-8000}"]