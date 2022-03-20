using Nanoid
using Documenter

DocMeta.setdocmeta!(Nanoid, :DocTestSetup, :(using Nanoid); recursive=true)

makedocs(;
    modules=[Nanoid],
    authors="Reinaldy Rafli <aldy505@tutanota.com> and contributors",
    repo="https://github.com/Reinaldy Rafli/Nanoid.jl/blob/{commit}{path}#{line}",
    sitename="Nanoid.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Reinaldy Rafli.github.io/Nanoid.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Reinaldy Rafli/Nanoid.jl",
    devbranch="master",
)
