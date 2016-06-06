require 'pry'

class Hamming

  def self.compute(string1, string2)
    if string1.length == string2.length
      find_string_diff(string1, string2)
    else
      raise_error
    end
  end

  def self.find_string_diff(string1, string2)
    diff = 0
    string1.split('').each.with_index do |letter, index|
      (diff += 1) if letter != string2[index]
    end
    diff
  end

  def self.raise_error
    raise ArgumentError
  end

end
