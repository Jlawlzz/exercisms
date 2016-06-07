require 'pry'


class Complement

  def self.of_dna(molecule_strand)

    complements = {'C': 'G', 'G': 'C', 'T': 'A', 'A': 'U'}

    translation = molecule_strand.split('').map do |molecule|
      complements[molecule.to_sym] if complements[molecule.to_sym]
    end

    (translation.join('').length == molecule_strand.length) ? translation.join('')
                                                            : ''
  end

end
