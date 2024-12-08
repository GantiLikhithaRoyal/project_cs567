# Use the official Python image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Install coverage and mutmut for testing
RUN pip install coverage mutmut

# Command to run tests
CMD ["pytest"]
