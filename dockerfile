# Base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir pylint

# Run tests automatically when container runs
CMD ["python", "-m", "unittest", "discover", "-s", ".", "-p", "test_*.py"]
