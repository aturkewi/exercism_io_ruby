class Complement

  CONVERSION = {"G"=>"C", "C"=>"G", "T"=>"A", "A"=>"U"}
  VERSION = 3

  def self.of_dna(dna_string)
    dna_array = dna_string.chars
    replace_with_rna(dna_array).join('')
  end

  def self.replace_with_rna(dna_array)
    dna_array.collect do |nucleotide|
      raise ArgumentError unless CONVERSION.keys.include?(nucleotide)
      CONVERSION[nucleotide]
    end
  end

end
