module Nanoid

using Random

const urlalphabet = "useandom-26T198340PX75pxJACKVERYMINDBUSHWOLF_GQZbfghjklqvwyzrict"

rng = Random.RandomDevice()

function randomcharacter(from::String)::Char
    return rand(rng, from)
end

function generate(alphabet::String, length::Integer)::String
    id = []

    for _ = 1:length
        randomchar = string(randomcharacter(alphabet))
        append!(id, randomchar)
    end

    join(id, "")
end

"""
    nanoid(size::Integer = 21; alphabet::String = "") -> String

Generate a random Nanoid with the given size and alphabet.
Size defaults to 21, and alphabet defaults to the URL-safe alphabet.

## Examples

```jldoctest
julia> nanoid()
"tcDIFxMJHw6UgUnbI_6za"

julia> nanoid(10)
"OutzQWa1SB"

julia> nanoid(; alphabet = "ABCDEFGHIJ")
"GEHCAGFJIAHCJGIHHIHFF"

julia> nanoid(10; alphabet = "abcdef")
"abeafebaab"
```
"""
function nanoid(size::Integer=21; alphabet::String = "")::String
    if size < 1
        error("size must be at least 1")
    end

    if alphabet == ""
        alphabet = urlalphabet
    end

    generate(alphabet, size)
end

export nanoid

end
