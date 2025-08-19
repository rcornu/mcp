FROM ghcr.io/astral-sh/uv:python3.13-trixie

CMD ["uvx", "awslabs.aws-api-mcp-server@latest", "--host", "0.0.0.0", "--port", "${PORT:-8000}"]