# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule msquic_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("msquic")
JLLWrappers.@generate_main_file("msquic", Base.UUID("17734543-78a6-5755-a5c1-a142e6e862cd"))
end  # module msquic_jll
