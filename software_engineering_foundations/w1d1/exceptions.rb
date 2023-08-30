def my_method(arg_1, arg_2)
  puts arg_1
  puts arg_2
end 

my_method("a") # ArgumentError:wrong number of arguments


5 + nil # TypeError: nil can't be coerced into Integer

num = 0 

10 / num # ZeroDivisionError: divided by 0

puts "finished"

num = 0

begin
  puts "dividing 10 by #{num}"
  ans = 10 / num
  puts "the answer is #{ans}"
rescue
  puts "There was an error with that division"
end 

puts "--------"
puts "finished"