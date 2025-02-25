# Use Ubuntu images as base image
FROM ubuntu:20.04

# Install necessary packages
RUN apt-get update && apt-get install -y\
    wget \
    openjdk-11-jdk \
    libxext6 \
    libxrender1 \
    libxtst6 \
    libxi6 \
    && rm -rf /var/lib/apt/lists/*


# Download and install IntelliJ IDEA
RUN wget https://download.jetbrains.com/idea/ideaIC-2021.2.tar.gz \
    && tar -xzf ideaIC-2021.2.tar.gz -C /opt/ \
    && rm ideaIC-2021.2.tar.gz

# Working folder configuration
WORKDIR /opt/idea-IC-*/bin

# Command to run IntelliJ IDEA
CMD ["./idea.sh"]