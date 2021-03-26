function to_rna(dna::AbstractString)
	map(to_rna, dna)
end

function to_rna(c::Char)
	complements = Dict('G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
	c ∈ keys(complements) || throw(ErrorException("Unknown nucleotide: $c"))
	complements[c]
end

