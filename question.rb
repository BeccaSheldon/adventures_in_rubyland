require 'rainbow'

header = <<-HEADER



                 '||               '||                        '||  
... ..  ... ...   || ...  .... ...  ||   ....   .. ...      .. ||  
 ||' ''  ||  ||   ||'  ||  '|.  |   ||  '' .||   ||  ||   .'  '||  
 ||      ||  ||   ||    |   '|.|    ||  .|' ||   ||  ||   |.   ||  
.||.     '|..'|.  '|...'     '|    .||. '|..'|' .||. ||.  '|..'||. 
                          .. |                                     
                           ''                                      

HEADER

puts header.color("#8b0000") ##20b2aa

class Question
  attr_reader :text, :choices
  attr_accessor :user_answer, :correct_answer

  def initialize(text, choices, correct_answer)
    @text = text
    @choices = choices
    @correct_answer = correct_answer
  end

  def user_answer
    puts "Select a number choice and hit enter - good luck!"
    @user_answer = gets.chomp.to_i
  end

  def evaluate_answer
    if @user_answer == @correct_answer
       pass = "You pass!"
       puts pass.color("#00ee00")
    else 
      fail = "Not quite. Better luck next round!"
      puts fail.color("#ffff00")
    end
  end
end

q1 = Question.new("1. Who invented Ruby?", {1 => "Yukihiro Mertz", 2 => "Yukihiro Matz", 3 => "Trick Question"}, 2)
puts q1.text.color("#1e90ff")
puts q1.choices
q1.user_answer
q1.evaluate_answer

q2 = Question.new("2. According to Matt, the supermodel of the tech world is:", {1 => "Gisele Budgen", 2 => "Karlie Kloss ", 3 => "Client Browser"}, 3)
puts q2.text.color("#1e90ff")
puts q2.choices
q2.user_answer
q2.evaluate_answer

q3 = Question.new("3. How do you spell Shezan's name?", {1 => "Shezan", 2 => "Shehzan", 3 => "Shezen"}, 2)
puts q3.text.color("#1e90ff")
puts q3.choices
q3.user_answer
q3.evaluate_answer

q4 = Question.new("4. She got it from her mama! And her grandama - wait - does ruby use multiple-inheritance?", {1 => "Yes", 2 => "No", 3 => "I'm lost"}, 2)
puts q4.text.color("#1e90ff")
puts q4.choices
q4.user_answer
q4.evaluate_answer

q5 = Question.new("5. Naughty method! Which method has exhibitionist-like qualities?", {1 => ".reveal", 2 => ".flash", 3 => "Neither 1 or 2"}, 3)
puts q5.text.color("#1e90ff")
puts q5.choices
q5.user_answer
q5.evaluate_answer

