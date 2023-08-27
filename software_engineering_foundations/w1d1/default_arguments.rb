# Let's make num an optional parameter
# By default, num will have the value of 1
def repeat(message, num=1)
  message * num
end 

p repeat("hi") # => "hi"
p repeat("hi", 3) # => "hihihi"