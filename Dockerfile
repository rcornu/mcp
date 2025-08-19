FROM ghcr.io/astral-sh/uv:python3.11

CMD ["uvx", "awslabs.aws-api-mcp-server@latest", "--host", "0.0.0.0", "--port", "${PORT:-8000}"]