using Pkg

dependencies = [
    PackageSpec(name="IJulia", version="1.24.2"),
    "Compat", "Distributions", "Plots", "CSV", "DataFrames", 
    "SpecialFunctions", "Statistics", "NLsolve", "Optim", "KernelDensity", "LaTeXStrings"
]

Pkg.add(dependencies)