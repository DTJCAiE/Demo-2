# Demo-2

This is one of the two repositories accompanying "Teaching Reproducibility and Replicability while Teaching Econometrics in the Classroom" by Anson T. Y. Ho, Kim P. Huynh, David T. Jacho-Chávez, Katie Leinenbach, and Carson H. Rea.

The repository is cloned from an earlier use case for the for Ottawa Replication Games on May 5, 2023 at the University of Ottawa.

The original repository can be found [here](https://github.com/atyho/Ottawa-Replication-Games-2023.git).

## Overview

This repository contains the replication programs for [Alvarez, Lippi, and Oskolkov (2021a)](https://doi.org/10.1093/qje/qjab042). The replication exercise is conducted for Ottawa Replication Games on May 5, 2023 at the University of Ottawa. See [our report](Ho_Huynh_Rea_Replication_Report.pdf) for full details of the exercise and the findings. 

## How to execute

1. **Build the Docker image**. Open a terminal or command prompt, navigate to the directory containing the Dockerfile, and run the following command to build the Docker image. 
This process will install Julia, JupyterLab, and other required dependencies. 
*Note: instead of storing the data file in the repository, the Docker container building process will download the data file from Harvard Dataverse on the fly.*
````bash
docker build -t replication-games
````

2. **Launch the Docker container**. After the build process completes, run the following command
````bash
docker run --name my_jupyterlab -p 8888:8888 replication-games
````

> **Note:** Users can launch a dev container through GitHub Codespaces as an alternative. See GitHub documentation for [more](https://docs.github.com/en/codespaces/developing-in-codespaces/creating-a-codespace-for-a-repository).

## Files

- [Dockerfile](Dockerfile) contains the code for building the Docker container to execute the program. 

- [dependencies.jl](dependencies.jl) is a Julia file that contains a list of required packages for the program. It will be executed in the Docker image building process.

- [reproduction](reproduction) folder contains the program for reproducing the empirical estimates in [Alvarez et al (2021a)](https://doi.org/10.1093/qje/qjab042). It includes the following subfolders:
    - [rep_original](reproduction/rep_original): programs to reproduce the original authors' estimates, with edits made on the authors' replication program available at [Harvard Dataverse](https://doi.org/10.7910/DVN/IBM0IE) [(Alvarez et al, 2021b)](https://doi.org/10.7910/DVN/IBM0IE)
    - [rep_20prct](reproduction/rep_20prct): bootstrapping repetition reduced to 20% of the original program
    - [rep_50prct](reproduction/rep_50prct): bootstrapping repetition reduced to 50% of the original program
    - [rep_200prct](reproduction/rep_200prct): bootstrapping repetition increased to 200% of the original program
    - [rep_500prct](reproduction/rep_500prct): bootstrapping repetition increased to 500% of the original program

- [replication](replication) folder contains the program for re-estimating [Alvarez et al (2021a)](https://doi.org/10.1093/qje/qjab042) using the data cleaning criteria in [Cavallo (2018)](https://doi.org/10.1162/REST_a_00652).

> **Note:** For GitHub Codespaces, you will also need the `.devcontainer` folder that contains additional Codespaces configuration.

## References

- Alvarez, F., Lippi, F. and Oskolkov, A.: 2021a, The macroeconomics of sticky prices with generalized hazard functions, _The Quarterly Journal of Economics_, 137(2), 989–1038. [https://doi.org/10.1093/qje/qjab042](https://doi.org/10.1093/qje/qjab042).

- Alvarez, F., Lippi, F. and Oskolkov, A.: 2021b, Replication Data for: ’The Macroeconomics of Sticky Prices with Generalized Hazard Functions’, Harvard Dataverse, [https://doi.org/10.7910/DVN/IBM0IE](https://doi.org/10.7910/DVN/IBM0IE).

- Cavallo, A.: 2018, Scraped data and sticky prices, _The Review of Economics and Statistics_, 100(1), 105–119. [https://doi.org/10.1162/REST_a_00652](https://doi.org/10.1162/REST_a_00652)
