
class Question 

  attr_reader :right_answer

  def initialize

    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @right_answer = @num1 + @num2

  end

  def new_question

    "What does #{@num1} plus #{@num2} equal?"

  end


end
