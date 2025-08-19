FROM python:3.11-slim

RUN pip install uv

RUN uvx --python-preference only-managed awslabs.aws-api-mcp-server@latest --help || true

EXPOSE $PORT

CMD ["sh", "-c", "echo 'Starting MCP server...' && uvx awslabs.aws-api-mcp-server@latest --host 0.0.0.0 --port ${PORT:-8000} || (echo 'Failed to start' && sleep 30)"]