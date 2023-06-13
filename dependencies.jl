using Pkg

dependencies = [
    PackageSpec(name="IJulia", version="1.24.2"),
    PackageSpec(name="Compat", version="4.6.1"),
    PackageSpec(name="Distributions", version="0.25.95"),
    PackageSpec(name="Plots", version="1.38.16"),
    PackageSpec(name="CSV", version="0.10.11"),
    PackageSpec(name="DataFrames", version="1.5.0"),
    PackageSpec(name="SpecialFunctions", version="2.2.0"),
    PackageSpec("Statistics"),
    PackageSpec(name="NLsolve", version="4.5.1"),
    PackageSpec(name="Optim", version="1.7.6"),
    PackageSpec(name="KernelDensity", version="0.6.7"),
    PackageSpec(name="LaTeXStrings", version="1.3.0")
]

Pkg.add(dependencies)