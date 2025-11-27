# Multi-stage build for SRE Academy Training Application
# Base image: Python 3.10 (stable and widely supported)
FROM python:3.10

# Expose Flask application port
EXPOSE 5000

# Set working directory
WORKDIR /app

# Install dependencies with pinned versions for reproducibility
RUN pip install --no-cache-dir \
    flask==3.0.3 \
    prometheus_client==0.20.0 \
    opentelemetry-api==1.27.0 \
    opentelemetry-sdk==1.27.0 \
    opentelemetry-exporter-otlp-proto-grpc==1.27.0 \
    opentelemetry-instrumentation-flask==0.48b0 \
    opentelemetry-instrumentation-wsgi==0.48b0 \
    opentelemetry-instrumentation-logging==0.48b0 \
    opentelemetry-exporter-otlp==1.27.0

# Copy application code
COPY . .

# Create log directory with proper permissions
RUN mkdir -p /app/logs && chmod -R 777 /app/logs

# Health check (optional but recommended for production)
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
    CMD python -c "import urllib.request; urllib.request.urlopen('http://localhost:5000/')" || exit 1

# Run Flask application
CMD ["flask", "run", "--host", "0.0.0.0"]
