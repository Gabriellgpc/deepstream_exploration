# Select Base Image
#FROM nvcr.io/nvidia/deepstream:5.0-20.07-triton
# FROM nvcr.io/nvidia/deepstream:6.0.1-devel
# FROM nvcr.io/nvidia/deepstream:6.0.1-triton
# FROM nvcr.io/nvidia/deepstream:6.3-samples
# FROM nvcr.io/deepstream:6.3-gc-triton-devel

# Update the repo
RUN apt-get update

RUN  apt-get install -y \
             libgstreamer-plugins-base1.0-dev \
             libgstreamer1.0-dev \
             libgstrtspserver-1.0-dev \
             libx11-dev
#              cuda

# Install required dependencies
# RUN apt-get install ffmpeg python3-gi python3-dev python3-gst-1.0 -y

WORKDIR /opt/nvidia/deepstream/deepstream-6.3
# RUN pip3 install jupyterlab

#python binding
# WORKDIR /opt/nvidia/deepstream/deepstream/sources
# RUN git clone https://github.com/NVIDIA-AI-IOT/deepstream_python_apps.git

# WORKDIR /opt/nvidia/deepstream/deepstream/sources/deepstream_python_apps/bindings/
# RUN git submodule update --init
# RUN mkdir build

# WORKDIR /opt/nvidia/deepstream/deepstream/sources/deepstream_python_apps/bindings/build
# RUN cmake ..  -DPYTHON_MAJOR_VERSION=3 -DPYTHON_MINOR_VERSION=8
# RUN make
# RUN apt install libgirepository1.0-dev libcairo2-dev -y
# RUN pip3 install ./pyds-1.1.1-py3-none-linux_x86_64.whl

# CMD jupyter-lab --no-browser --allow-root --ip=0.0.0.0 --port=8888 --NotebookApp.token="" --notebook-dir=/opt/nvidia/deepstream/deepstream-6.0/