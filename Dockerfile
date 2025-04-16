FROM node:20.17.0-bookworm
RUN apt-get update && apt-get upgrade -y && \
    apt-get install python3 python3-venv  -y

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Activate the virtual environment and install Python packages
RUN /opt/venv/bin/pip install --upgrade pip && \
    /opt/venv/bin/pip install "mkdocs-techdocs-core==1.*" "mkdocs-material"

# Set the virtual environment as the default Python environment
ENV PATH="/opt/venv/bin:$PATH"

RUN npm install -g @techdocs/cli