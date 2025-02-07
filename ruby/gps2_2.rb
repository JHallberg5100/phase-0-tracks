#This is for the gps.
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # break the string into an array
  #cycle through the array
  #set quantity to purchase
  # print the list to the console [can you use one of your other methods here?]
# output: hash
#def list_maker(string_input)
#  new_array =[]
#  output = {}
#  new_array = string_input.split(" ")
#  cycle = 0
#  length = new_array.length
#  while cycle != length
#    output[new_array[cycle]] = 5
#    cycle += 1
#  end
#  p output
#end
#list_test = list_maker("potato turnip corn banana")
def list_maker(string_input)
  new_array = string_input.split
  output = {}
  new_array.each do |item|
    output[item] = 5
  end
  print_list(output)
  return output
end

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# take input of item name and quantity
# shovel both into the hash
# print to make sure it works
# output: hash

def add_item(input_item, list, input_number=5)
  list[input_item] = input_number
  return list
end

# Method to remove an item from the list
# input:item to be removed and list
# steps:
# take variables
# remove that key from the hash
#return the hash
# output:hash
def remove_item(item, list)
  list.delete(item)
  return list
end

# Method to update the quantity of an item
# input:item, list, the quanitity
# steps:
# take variables
# overwrite current quantity in list with new one
#return list
# output: one more updated hash
def update_quantity(item, list, quantity)
  list[item] = quantity
  return list
end

# Method to print a list and make it look pretty
# input:the list
# steps:
# take list
# Cycle through list
# List each in a sentance to make it look nice
# output: printing to console?
def print_list(list)
  list.each {|name, quantity| puts "Please buy #{quantity} of #{name}"}
end

list_test = list_maker("potato turnip corn banana")
puts add_item("tomato", list_test, 10)
puts remove_item("tomato", list_test)
puts update_quantity("potato", list_test, 11352)
print_list(list_test)


#++++++++REFLECTION STUFF++++++++++
#Pseudocode is an important part of coding.  This is a much more structured approach then I normally take, so  I should try using it more often
#
#In this challange Hashes are the far superior method for storing data.  The downside to that is that if you wish each item.
#to have more then one data point you would need to store them in an array inside the hash.
#
#A method returns the last datapoint before it terminates.  Hard/explicit returns are prefered though.
#
#Variables are the arguments of methods normally.  However, if you have a yield inside the method a block of code can be passed.
#
#There are two ways that immeditally spring to mind when it comes to passing info between methods.  The first is global variables, as when a method
#stores data in that variable it can be accessed inside other variables.  The other is having one arguments return that data, and store it in a variable which is then passed to
#the other as an argument.
#
#Blocks are a bit confusing still, mostly around the yield and when its used.
#However beyond that everything makes alot more sense now.
#
