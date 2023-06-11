#https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
#https://docs.docker.com/engine/reference/builder/#env

FROM continuumio/miniconda3
RUN apt-get update
#RUN conda install -c conda-forge jupyterlab

RUN wget https://julialang-s3.julialang.org/bin/linux/x64/1.6/julia-1.6.7-linux-x86_64.tar.gz \
&& tar -xvzf julia-1.6.7-linux-x86_64.tar.gz && rm julia-1.6.7-linux-x86_64.tar.gz
#RUN mv julia-1.8.1/ /opt/
#RUN ln -s /opt/julia-1.8.1/bin/julia /usr/local/bin/julia
#RUN julia -e 'using Pkg; Pkg.add("dependencies.jl")'

RUN wget ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/ncbi-blast-2.6.0+-x64-linux.tar.gz \
&& tar zxvpf ncbi-blast-2.6.0+-x64-linux.tar.gz && rm ncbi-blast-2.6.0+-x64-linux.tar.gz

#WORKDIR /usr/local/src/app/program
#ENTRYPOINT ["spark-submit", "--verbose", "--master", "local[*]", "--driver-memory", "1G", "distance.py"]
