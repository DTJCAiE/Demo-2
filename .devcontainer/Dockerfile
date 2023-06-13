# References for writing Dockerfile
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/

# Obtain Official Julia image 
FROM julia:1.6.7-bullseye

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /work
COPY . /app

# Install required packages
RUN julia -e 'include("dependencies.jl")'

RUN apt-get update \
&& apt-get install -y build-essential \
&& apt-get install -y wget \
&& apt-get install -y curl \
&& apt-get install -y git 
#&& apt-get clean \
#&& rm -rf /var/lib/apt/lists/*

# Install miniconda
#ENV CONDA_DIR /opt/conda
#RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh \
#&& /bin/bash ~/miniconda.sh -b -p /opt/conda

# Put conda in path so we can use conda activate
#ENV PATH=$CONDA_DIR/bin:$PATH

# Install Jupyter lab for interactive notebook 
#RUN conda install -y -c conda-forge nodejs jupyterlab notebook

# Install Jupyter Server and necessary extensions
#RUN conda install -y -c conda-forge jupyter_server jupyterlab-git
#RUN pip install --no-cache-dir --quiet jupyter_collaboration

# Expose port 8888 for JupyterLab
#EXPOSE 8888



# Launch JupyterLab when the container starts
#CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
#CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
#ENTRYPOINT ["jupyter"]