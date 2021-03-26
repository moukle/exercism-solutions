"""
	distance(a, b)

Computes Hamming distance between `a` and `b`.

If `a` and `b` differ in length, an ArgumentError is thrown.

# Examples
```julia-repl
julia> distance("abc", "aac")
1
```
"""
function distance(a::AbstractString, b::AbstractString)
	length(a) == length(b) || throw(ArgumentError("a and b differ in length"))
	sum(collect(a) .!= collect(b))
end
