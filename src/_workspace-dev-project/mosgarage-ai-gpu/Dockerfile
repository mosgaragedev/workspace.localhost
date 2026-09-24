FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Core tools
RUN apt update && apt install -y \
    python3 python3-pip python3-venv \
    git curl wget \
    build-essential \
    clinfo \
    ocl-icd-opencl-dev \
    intel-opencl-icd \
    && rm -rf /var/lib/apt/lists/*

# Python AI stack
RUN pip3 install --no-cache-dir \
    jupyterlab \
    numpy pandas matplotlib \
    torch torchvision torchaudio

# Intel AI stacks
RUN pip3 install --no-cache-dir \
    openvino \
    openvino-dev \
    intel-extension-for-pytorch

WORKDIR /workspace

EXPOSE 8888

CMD ["bash"]