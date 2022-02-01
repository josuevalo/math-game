class Question
  attr_accessor :question, :answer
  
  def initialize
    num1 = rand(1..20)
    num2 = rand(1..20)
    syms = ["+", "-", "*", "/"]
    sym = syms.sample(1)[0]
    @question = "#{num1} #{sym} #{num2}"
    # puts question
    @answer = instance_eval question
  end

  

end