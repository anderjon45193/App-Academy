# Let's make num an optional parameter
# By default, num will have the value of 1
def repeat(message, num=1)
  message * num
end 

p repeat("hi") # => "hi"
p repeat("hi", 3) # => "hihihi"

# A fairly common design pattern is to set
# an arg to nil by default and have logic 
# based on that scenario
def greet(person_1, person_2=nil)
  if person_2.nil?
    p "Hey " + person_1
  else
    p "Hey " + person_1 + " and " + person_2
  end 
end 

greet("Chao") # => "Hey Chao"
greet("Chao", "Arittro") # => "Hey Chao and Arittro"

# It's best practice to have optional parameters listed after
# the required ones.