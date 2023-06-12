#https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
#https://docs.docker.com/engine/reference/builder/#env

FROM continuumio/miniconda3
RUN apt-get update
#RUN conda install -c conda-forge jupyterlab

RUN wget --quiet https://julialang-s3.julialang.org/bin/linux/x64/1.6/julia-1.6.7-linux-x86_64.tar.gz \
&& tar -xvzf julia-1.6.7-linux-x86_64.tar.gz \
&& rm julia-1.6.7-linux-x86_64.tar.gz \
&& mv julia-1.6.7/ /opt/
RUN ln -s /opt/julia-1.6.7/bin/julia /usr/local/bin/julia

WORKDIR /app
COPY . /app

RUN julia -e 'include("dependencies.jl")'

ENTRYPOINT ["julia"]