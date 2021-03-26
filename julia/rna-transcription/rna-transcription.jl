function to_rna(dna)
	join([translate(c) for c in dna])
end

function translate(c)
	complements = Dict('G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
	c ∈ keys(complements) || throw(ErrorException("Not a valid char"))
	complements[c]
end
