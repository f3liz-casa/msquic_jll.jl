# msquic_jll

[msquic](https://github.com/microsoft/msquic), Microsoft's QUIC library, built for Julia by
[BinaryBuilder](https://github.com/JuliaPackaging/BinaryBuilder.jl). The client end of
[karutte](https://github.com/f3liz-casa/karutte-wt) on the BEAM is
[Hayate](https://github.com/f3liz-casa/hayate), and this is what Hayate loads.

`build_tarballs.jl` is the recipe, in Yggdrasil's shape. The GitHub Actions workflow builds
it here, in this repo, and publishes the JLL wrapper to `main` and the tarballs to a Release.
Once the recipe lands in Yggdrasil the registered `msquic_jll` supersedes this one.

Platforms: every Linux BinaryBuilder knows (glibc and musl; x86_64, i686, aarch64, armv6l,
armv7l, powerpc64le, riscv64) and macOS (x86_64 from 10.15, aarch64). Not FreeBSD (msquic
has no FreeBSD platform of its own) and not Windows (msquic's Windows code is for MSVC, not
mingw).

```julia
using Pkg; Pkg.add(url = "https://github.com/f3liz-casa/msquic_jll.jl")
using msquic_jll; msquic_jll.libmsquic
```
