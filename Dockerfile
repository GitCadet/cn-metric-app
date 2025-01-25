FROM python:3.13-alpine

# Set working directory in container
WORKDIR /app

# Install build dependencies (including gcc, python3-dev, musl-dev, linux-headers, and libffi-dev)
RUN apk add --no-cache gcc python3-dev musl-dev linux-headers libffi-dev

# Copy the requirements file and install dependencies
COPY requirements.txt .

# Install packages and show logs in case of failure
RUN pip3 install --no-cache-dir -r requirements.txt || tail -n 10 /root/.pip/pip.log

# Copy the rest of your application code into the container
COPY . .

# Set Flask environment variable
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the application port (5001 in your case)
EXPOSE 5001

# Command to run the Flask application
CMD ["flask", "run", "--port", "5001"]
