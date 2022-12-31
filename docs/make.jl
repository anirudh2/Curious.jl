using Curious
using Documenter

DocMeta.setdocmeta!(Curious, :DocTestSetup, :(using Curious); recursive=true)

makedocs(;
    modules=[Curious],
    authors="Anirudh A. Patel",
    repo="https://github.com/anirudh2/Curious.jl/blob/{commit}{path}#{line}",
    sitename="Curious.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://anirudh2.github.io/Curious.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/anirudh2/Curious.jl",
    devbranch="main",
    devurl="latest",
)
