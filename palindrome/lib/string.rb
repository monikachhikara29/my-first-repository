class String
 
  def palindrome? 
    if self.size == 0
      puts "please provide an input"
    elsif self == self.reverse
      puts "True"
    else
      puts "False"
    end
  end
end

a = "abds"
a.palindrome?
b = "aba"
b.palindrome?
c=""
c.palindrome?
 