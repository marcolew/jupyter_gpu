# Start from the NVIDIA CUDA base image with CUDA version and Ubuntu version that match your requirements
FROM nvidia/cuda:12.3.1-base-ubuntu20.04

# Install Python 3 and pip
RUN apt-get update && apt-get install -y python3-pip python3-dev 

# Install JupyterLab and any other requirements
RUN pip3 install jupyterlab

# Set up working directory
WORKDIR /home/jovyan/work

# Expose JupyterLab port
EXPOSE 8888

# Start JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]
