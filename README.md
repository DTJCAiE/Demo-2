# Overview

This repository contains the replication programs for [Alvarez, Lippi, and Oskolkov (2022)](https://doi.org/10.1093/qje/qjab042). The replication exercise is conducted for Ottawa Replication Games on May 5, 2023 at the University of Ottawa.

# How to execute

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

# Files

- `Dockerfile` contains the code for building the Docker container to execute the program. 
> **Note:** For GitHub Codespaces, you will also need the `.devcontainer` folder that contains additional Codespaces configuration.

- `dependencies.jl` is a Julia file that contains a list of required packages for the program. It will be executed in the Docker image building process.

- `reproduction` folder contains the program for reproducing the empirical estimates in [Alvarez et al (2021)](). It includes the following subfolders:
    - `rep_original`: program to reproduce the original authors' estimates, with edits made for the replication program available at Harvard Dataverse [data archive]()
    - `rep_20prct`: program with bootstrapping repetition reduced to 20% of the original program
    - `rep_50prct`
    - `rep_200prct`
    - `rep_500prct`

- `replication` folder contains the program for re-estimating [Alvarez et al (2021)]() using the data cleaning criteria in Cavallo (2018).

# References

- Alvarez, F., Lippi, F., & Oskolkov, A. (2022). The Macroeconomics of Sticky Prices with Generalized Hazard Functions, _The Quarterly Journal of Economics_, Volume 137, Issue 2, May 2022, Pages 989–1038, [https://doi.org/10.1093/qje/qjab042](https://doi.org/10.1093/qje/qjab042).

- Alvarez Fernando, Lippi Francesco, Oskolkov Aleksei, “Replication Data for: ‘The Macroeconomics of Sticky Prices with Generalized Hazard Functions’,” (2021), Harvard Dataverse, [https://doi.org/10.7910/DVN/IBM0IE](https://doi.org/10.7910/DVN/IBM0IE).

- Alberto Cavallo; Scraped Data and Sticky Prices. The Review of Economics and Statistics 2018; 100 (1): 105–119. doi: https://doi.org/10.1162/REST_a_00652
