FROM ubuntu:21.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y dialog apt-utils julia git wget \
        && rm -rf /var/lib/apt/lists/*

#RUN git clone --recursive https://github.com/brettChapman/BioGraph.jl.git
#RUN julia -e 'import Pkg; Pkg.generate("BioGraph")'

RUN julia -e 'import Pkg; Pkg.add(url="https://github.com/brettChapman/BioGraph.jl", rev="main")'

#RUN cp -r BioGraph.jl/* BioGraph/.

#RUN julia -e 'import Pkg; Pkg.develop("BioGraph")'

#RUN julia -e 'import Pkg; Pkg.add("BioGraph"); Pkg.add("GraphIO"); Pkg.add("ParserCombinator"); Pkg.add("JuMP"); Pkg.add("BioSequences"); Pkg.add("CSV"); Pkg.add("Cbc"); Pkg.add("LightGraphs"); Pkg.add("Suppressor"); Pkg.precompile()'

#RUN git clone https://github.com/nguyetdang/BioGraph.jl
#RUN cd BioGraph.jl
#RUN echo 'using Pkg \nPkg.instantiate()' > install.jl
#RUN julia install.jl
#RUN PackageSpec("BioGraph"
#RUN echo 'using Pkg \nPkg.add(PackageSpec(name="BioGraph"))\nPkg.activate()' > install.jl


#pkg"add BioGraph"\npkg"precompile"' > install.jl

#RUN cat install.jl
#RUN julia install.jl
#using Pkg
#packages = ["JSON", "CSV"]
#Pkg.add(packages)

#RUN echo "
#using Pkg
#Pkg.status()
#" | julia
#RUN julia -e "using Pkg | Pkg.status()"
#RUN julia -e 'add BioGraph'
