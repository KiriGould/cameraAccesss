# Use an official Python runtime as a parent image
FROM python:3.8

# Install necessary Debian libraries
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libxrender1 \
    libxext6 \
    libx11-6 \
    libqt5x11extras5

# Install Python dependencies
COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Run your application
CMD ["python", "your_app.py"]

