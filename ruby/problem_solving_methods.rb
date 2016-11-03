def array_search(x, y)
  count =0
  x.each do |found|
    if found == y
      p count
      count +=1
    else
      count +=1
    end
  end
end

tester= [2,35,26,34,5,457,235,46,732,434,734,]

array_search(tester, 5)
