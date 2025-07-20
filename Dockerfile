FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy everything into /app
COPY . /app

# Expose port 8080
EXPOSE 8080

# Start Python HTTP server
CMD ["python3", "-m", "http.server", "8080"]
