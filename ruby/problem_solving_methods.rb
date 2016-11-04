def array_search(x, y)
  count =0
  thing = false
  x.each do |found|
    if found == y
      p count
      thing = true
      count +=1
    else
      count +=1
    end

    end
    if thing == false
      p nil
  end
end

tester= [2,35,26,34,5,457,235,46,732,434,734,]
#Take an integer, and have an array of that integer length

def fibo(input_i)
  @output_array = [0, 1]
  until @output_array.length == input_i
    @output_array << @output_array[-2] + @output_array[-1]
  end
  return @output_array
end

#def int(array_i)
#  count =0
#  problem = false
#  while problem == false
#    while count < array_i.length
#      if array_i[count +1] != nil
##          array_i[count], array_i[count +1] = array_i[count +1], array_i[count]
  #        count +=1
  #      else
#          count +=1
#        end
#      else
#        return
#      end

#    end
#      p array_i
##end
#int(tester)
