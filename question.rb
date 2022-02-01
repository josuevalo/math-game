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

# questions_list: [
#   { 
#     question: "What is 2 + 2?",
#     answer: 4
# },
# { 
#   question: "What is 22 + 52?",
#   answer: 74
# },
# { 
#   question: "What is 2 - 52?",
#   answer: -50
# },
# { 
#   question: "What is 50 / 2?",
#   answer: 2
# },
# { 
#   question: "What is 56 - 14?",
#   answer: 42
# },
# { 
#   question: "What is 2 x 222?",
#   answer: 444
# },
# { 
#   question: "What is 12 / 3?",
#   answer: 4
# },
# { 
#   question: "What is 2 x 42?",
#   answer: 84
# }
# ]