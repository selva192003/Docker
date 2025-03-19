# Use Python 3.11 as the base image
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /a

# Install any necessary dependencies
# If you have a requirements.txt file, it will install dependencies listed in it
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
# Make port 8000 available for the app (if your app runs on a specific port)
EXPOSE 8000

# Set the default command to run your app (e.g., 'python app.py')
CMD ["python", "app.py"]

