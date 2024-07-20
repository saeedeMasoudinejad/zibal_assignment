FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /usr/src/app
# Copy requirements file
# Copy the current directory contents into the container at /usr/src/app
COPY . .




# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt




# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run the Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]