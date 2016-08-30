module WebDriver

using PyCall

import Base: size, close, quit, parent, get

include("defs.jl")
include("generated.jl")
include("lib.jl")

end # module
