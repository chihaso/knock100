class Cryptgraphy
  def initialize(string)
    @string =string
  end

  def encode
    encoded_str = []
    @string.each { |c|
      if c.match?(/[a-z]/)
        encoded_str << 219 - c.ord
      else
        encoded_str << c
      end
    }
    encoded_str
  end

  def decode
    decoded_str = []
    @string.each { |c|
      if c.class == "integer" & (/[0-9]/)
        if c > 96 & c
        decoded_str << (c + 219).chr
      else
        decoded_str << c
      end
    }
    decoded_str
  end
end

puts "Input original string:"
str = gets.chomp.split(//)
encoded = Cryptgraphy.new(str).encode
decoded = Cryptgraphy.new(encoded).decode

puts "Encode..."
puts encoded.join
puts "Decode..."
puts decoded.join
