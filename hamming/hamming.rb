class Hamming

  VERSION = 1

  def self.compute(string1,string2)
    raise ArgumentError if string1.length != string2.length
    distance = 0
    dna_array1 = string1.split('')
    dna_array2 = string2.split('')
    dna_array1.each.with_index do |nucleotide, index|
      distance += 1 if nucleotide != dna_array2[index]
    end
    distance
  end

end
