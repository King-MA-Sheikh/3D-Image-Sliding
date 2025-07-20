FROM python:3.9-slim

# Set the working directory to current folder
WORKDIR /app

# Copy everything into the container (no extra folder)
COPY . .

# Expose the desired port (e.g., 8080)
EXPOSE 8080

# Run the HTTP server from current directory
CMD ["python3", "-m", "http.server", "8080"]
