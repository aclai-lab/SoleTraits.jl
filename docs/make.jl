using SoleTraits
using Documenter

DocMeta.setdocmeta!(SoleTraits, :DocTestSetup, :(using SoleTraits); recursive=true)

makedocs(;
    modules=[SoleTraits],
    authors="Eduard I. STAN, Giovanni PAGLIARINI",
    repo="https://github.com/aclai-lab/SoleTraits.jl/blob/{commit}{path}#{line}",
    sitename="SoleTraits.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://aclai-lab.github.io/SoleTraits.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/aclai-lab/SoleTraits.jl",
)
