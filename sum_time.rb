def sum_time(t1,t2)
  pattern = /^([0-1]?[0-9]|2[0-3])\:([0-5]?[0-9])\:([0-5]?[0-9])/
  if( t1.match(pattern) && t2.match(pattern) )
    t1 = t1.split(":").map(&:to_i)
    t2 = t2.split(":").map(&:to_i)
    total = []
    total[0] = t1[0] + t2[0]
    total[1] = t1[1] + t2[1]
    total[2] = t1[2] + t2[2]
    if(total[2] > 60)
      total[1] += total[2]/60
      total[2] = total[2] % 60
    end
    if(total[1] > 60)
      total[0] += total[1] / 60
      total[1] = total[1] % 60
    end
    puts "The total time is #{total[0]/24} days and #{total[0]%24} hours #{total[1]} minutes and #{total[2]} seconds"
  else
    puts  "Wrong time format"
  end
end

 sum_time("12:12:23","23:21:12")
