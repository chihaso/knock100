class Cryptgraphy
  SECRET_NUM = 219
  def initialize(string)
    @string =string
  end

  def encode
    encoded_str = []
    @string.each { |c|
      if c.match?(/[a-z]/)
        encoded_str << SECRET_NUM - c.ord
      else
        encoded_str << c
      end
    }
    encoded_str
  end

  def decode
    decoded_str = []
    @string.each { |c|
      if c.class == Integer
        if c > (SECRET_NUM - 123) && c < (SECRET_NUM - 96)
          decoded_str << (SECRET_NUM - c).chr
        else
          decoded_str << c
        end
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
