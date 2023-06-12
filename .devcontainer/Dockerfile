# References for writing Dockerfile
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/

# Obtain Official Julia image 
FROM julia:1.6.7-bullseye

WORKDIR /app
COPY . /app

# Install required packages
RUN julia -e 'include("dependencies.jl")'

RUN apt-get update \
&& apt-get install -y build-essential \
&& apt-get install -y wget \
&& apt-get install -y git 
#&& apt-get clean \
#&& rm -rf /var/lib/apt/lists/*

# Install miniconda
ENV CONDA_DIR /opt/conda
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh \
&& /bin/bash ~/miniconda.sh -b -p /opt/conda

# Put conda in path so we can use conda activate
ENV PATH=$CONDA_DIR/bin:$PATH

RUN conda install -c conda-forge jupyterlab

ENTRYPOINT ["julia"]