# Use official Python image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY app/requirements.txt .
RUN pip install -r requirements.txt

# Copy application files
COPY app /app

# Define the command to run the app
CMD ["python", "main.py"]
