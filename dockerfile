# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

# Install FastAPI with all optional dependencies (for additional features like testing, docs, etc.)
RUN pip install --no-cache-dir fastapi[all]



# Expose the port on which the app will run
EXPOSE 8000


# Command to run the application with Uvicorn
CMD ["uvicorn", "api.main:app", "--host", "0.0.0.0", "--port", "8001"]
