# Start from the NVIDIA CUDA base image with CUDA version and Ubuntu version that match your requirements
FROM nvidia/cuda:11.6.0-base-ubuntu20.04

# Install Python 3 and pip
RUN apt-get update && apt-get install -y python3-pip python3-dev && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    ln -s /usr/bin/pip3 /usr/bin/pip

# Install JupyterLab and any other requirements
RUN pip install jupyterlab

# Set up working directory
WORKDIR /home/jovyan/work

# Expose JupyterLab port
EXPOSE 8888

# Start JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]
