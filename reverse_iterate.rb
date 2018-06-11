class Array
  def reverse_iterate
    len = self.length
    i = len - 1
    while(i>=0)
      yield(self[i])
      i -= 1
    end
  end
end

['hello', 01, 2, 3].reverse_iterate{ |i| print "#{i} "}
