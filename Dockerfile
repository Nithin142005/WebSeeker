# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Run webseeker.py when the container launches
# Note: Since the application requires interactive input, 
# you should run the container with: docker run -it <image_name>
CMD ["python", "webseeker.py"]
