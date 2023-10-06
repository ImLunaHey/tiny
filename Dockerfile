# Use a base image with a C compiler (gcc)
FROM gcc:latest

# Set the working directory in the container
WORKDIR /app

# Copy the C source code into the container
COPY tiny.c /app/

# Compile the C program
RUN gcc -o tiny tiny.c

# Run the compiled program
CMD ["./tiny"]
