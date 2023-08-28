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