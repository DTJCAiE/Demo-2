# See here for a repo gallery of platform specific folder examples: 
# https://github.com/devcontainers

FROM continuumio/anaconda3
RUN apt-get update

RUN wget -P /tmp/ https://julialang-s3.julialang.org/bin/linux/x64/1.8/julia-1.8.1-linux-x86_64.tar.gz 
RUN tar -xvzf julia-1.8.1-linux-x86_64.tar.gz
RUN sudo mv julia-1.8.1/ /opt/
RUN ln -s /opt/julia-1.8.1/bin/julia /usr/local/bin/julia
RUN julia -e 'using Pkg; Pkg.add("dependencies.jl")'
dependencies = [
    name="IJulia", version = "1.24.2",
    "IJulia",
    "Genie"
]

