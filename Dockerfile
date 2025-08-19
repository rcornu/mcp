FROM python:3.11-slim

RUN pip install uv

ENV AWS_REGION=us-east-1
ENV PORT=8000

EXPOSE 8000

CMD ["uvx", "awslabs.aws-api-mcp-server@latest", "--host", "0.0.0.0", "--port", "8000"]