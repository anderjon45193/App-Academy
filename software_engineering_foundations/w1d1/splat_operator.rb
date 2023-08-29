# Ruby methods expect exact number of arguments
# otherwise, you get ArgumentError
def method(arg_1, arg_2)
  p arg_1
  p arg_2
end 

method("a", "b", "c", "d", "e") # ArgumentError: wrong number of arguments

# If we want our method to have the ability to accept at least two
# arguments. At least arguments with potentially more, we can add a
# splat parameter. The additional arguments will be gathered into an 
# array.
def method(arg_1, arg_2, *other_args)
  p arg_1 # "a"
  p arg_2 # "b"
  p other_args # ["c", "d", "e"]
end 

method("a", "b", "c", "d", "e")

# If we pass in exactly two arguments, then other_args
# will be an empty array
# save splat at the end of parameter list to avoid 
def method(arg_1, arg_2, *other_args)
  p arg_1 # "a"
  p arg_2 # "b"
  p other_args # []
end 

# Avoid doing this
def method(*other_args, required_arg)
  p other_args # ["a", "b"]
  p required_arg # "c"
end 

method("a", "b", "c")

method("a", "b")

# Using splat to decompose an array
def greet(first_name, last_name)
  p "Hey " + first_name + ", your last name is " + last_name
end 

names = ["grace", "hopper"]
greet(names) # ArgumentError: wrong number of arguments (given 1, expected 2)

def greet(first_name, last_name)
  p "Hey " + first_name + ", your last name is " + last_name
end 

names = ["grace", "hopper"]
greet(*names) # = > "Hey Grace, your last name is Hopper"

arr_1 = ["a", "b"]
arr_2 = ["d", "e"]
arr_3 = [ *arr_1, "c", *arr_2 ]
p arr_3 # => ["a", "b", "c", "d", "e"]

# Using splat to decompose a hash
# Using double splat (**)
old_hash = { a: 1, b: 2 }
new_hash = { **old_hash, c: 3 }
p new_hash # => {:a =>1, :b=>2, :c=>3 }