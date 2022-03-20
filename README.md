# Nanoid

[![Build Status](https://github.com/aldy505/Nanoid.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/aldy505/Nanoid.jl/actions/workflows/CI.yml?query=branch%3Amaster)
[![Coverage](https://codecov.io/gh/aldy505/Nanoid.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/aldy505/Nanoid.jl)

Simple and minimalist Julia implementation of [nanoid](https://github.com/ai/nanoid).

## Install

```julia
Pkg.add("Nanoid")
```

## Usage

```julia
import Nanoid

id = Nanoid.nanoid()
# => "tcDIFxMJHw6UgUnbI_6za"

id = Nanoid.nanoid(10)
# => "OutzQWa1SB"

id = Nanoid.nanoid(; alphabet = "ABCDEFGHIJ")
# => "GEHCAGFJIAHCJGIHHIHFF"

id = Nanoid.nanoid(10; alphabet = "abcdef")
# => "abeafebaab"
```

## License

[MIT](./LICENSE)