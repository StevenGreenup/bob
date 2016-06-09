# Bob is a lackadaisical teenager. In conversation, his responses are very limited.
# Bob answers 'Sure.' if you ask him a question.
# He answers 'Whoa, chill out!' if you yell at him.
# He says 'Fine. Be that way!' if you address him without actually saying anything.
# He answers 'Whatever.' to anything else. Instructions
# Run the test file, and fix each of the errors in turn. When you get the first test to pass, go to the first pending or skipped test, and make that pass as well. When all of the tests are passing, feel free to submit.
# Remember that passing code is just the first step. The goal is to work towards a solution that is as readable and expressive as you can make it.
# Please make your solution as general as possible. Good code doesn't just pass the test suite, it works with any input that fits the specification.




class Bob

  def hey(remark)

    if silence?(remark)
      return 'Fine. Be that way!'
    elsif yelling?(remark) && letters?(remark)
      return 'Whoa, chill out!'

    elsif question?(remark)
      return "Sure."

    else
      return "Whatever."

    end
  end


  def yelling?(remark)
    (remark.upcase == remark)
  end

  def question?(remark)
    remark.end_with?("?")
  end

  def silence?(remark)
    remark.strip.empty?
  end



 def letters?(remark)
   c = ('a'..'z').to_a
   d = ('A'..'Z').to_a
   e = c+d
   remarks = remark.chars


   new_array = remarks.map do |remark|
     e.include? remark
   end

   # does it have a regular letter character
   return new_array.any?
 end


end
