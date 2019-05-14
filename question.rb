require_relative './player'

class Question
  attr_accessor :get_question, :get_answer

  def initialize
    @a = rand(1...20)
    @b = rand(1...20)
  end

  def get_question(player)
    player + " : What does #{@a} and #{@b} make?"
  end

  def get_answer
    answer = @a + @b
    # puts answer
  end

end


