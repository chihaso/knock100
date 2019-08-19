class Ngram
  def initialize(sentence, num)
    @sentence = sentence
    @num = num - 1
  end

  def devide
    word_separated_sentence = @sentence.split(" ")
    word_num = word_separated_sentence.size
    @word_ngram = []
    for i in 0..word_num - 1 do
      @word_ngram << word_separated_sentence[i..i + @num].join if word_separated_sentence[i + @num]
    end

    joined_sentence = @sentence.delete(",. ")
    char_num = joined_sentence.size
    @character_ngram = []
    for i in 0..char_num - 1 do
      @character_ngram << joined_sentence[i..i + @num] if joined_sentence[i + @num]
    end

  end

  def show
    puts @character_ngram.to_s
    puts @word_ngram.to_s
  end
end

str = "I am an NLPer"

ngram = Ngram.new(str, 2)
ngram.devide
ngram.show
