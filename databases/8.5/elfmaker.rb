#elfmaker
require "sqlite3"
require_relative "elfnamer"
include Elfnamer
#create the database full of elves
$db = SQLite3::Database.new("elves.db")
#With that database, allow users to modify it.  Give them the chance to view elves, add x amount of elves, and remove certain ones
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS elves(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    clan VARCHAR(255),
    lvl INT
  )
SQL
#Create the table full of elves

$db.execute(create_table_cmd)
def create_elf(db, age, lvl)
  name = name_creator
  puts "I did not break on #{name}"
  clan = tribe_assigner
  puts "I did not break on #{clan}"
  #IF this works I will be sad
  $db.execute("INSERT INTO elves (name, age, clan, lvl) VALUES ('#{name}', #{age},'#{clan}',#{lvl});")
end

def remove_elf (name)
  $db.execute("DELETE FROM elves WHERE name='#{name}';")
end

def view_elves
  view = $db.execute("SELECT * FROM elves;")
  view.each do |id,name, age, clan, lvl|
    puts "I am #{name} of Clan #{clan}.  I am #{age} years of age and #{lvl} level"
  end
end

def view_elf(id)
  db.execute("SELECT * FROM elves WHERE id=#{id};")
end

start = true
until start == false
  puts "Hello!  Welcome to the Elf generator."
  input = 0
  puts "What would you like to do today?  Enter 1 to view elves, 2 to remove elves, and 3 to generate more. 9 quits"
  input = gets.chomp
  input = input.to_i
  if input == 1
    output = view_elves
    puts output
  elsif input == 2
    puts "Enter the name of the elf you would like to remove.  Warning, will remove all elves of that name."
    input = gets.chomp
    remove_elf(input)
  elsif input == 3
    puts "How many elves would you like to add?"
    input = gets.chomp
    input = input.to_i
    counter = 0
    while counter != input
      create_elf($db, 20, 1)
      counter += 1
    end
  elsif input == 9
    start = false
  else
    puts "Huh?"
  end
end
