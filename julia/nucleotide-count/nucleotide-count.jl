"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand::String)
	nucleotides = ['A', 'T', 'G', 'C']
	res = Dict(c => 0 for c in nucleotides)

	for c in strand
		res[c] = get(res, c, 0) + 1
	end

	valid_strand = all(c ∈ nucleotides for c in keys(res))
	valid_strand ? res : throw(DomainError("Strand contains invalid 'nucleotides'"))
end
