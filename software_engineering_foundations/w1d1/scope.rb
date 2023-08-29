def say_hello
  message = "hello"
  p message
end 

say_hello

def say_hello
  message = "hello"
end 

say_hello
p message # NameError: undefined local variable

message = "hi"

def say_hello
  p message    # NameError: undefined local variables
end 

say_hello

# Global variables
$message = "hello globe"

def say_hello
  p $message
end 

say_hello # => "hello globe"

def say_hello
  $message = "hello globe"
end 

say_hello
p $message # => "hello globe"

# Constants
FOOD = "pho"
p FOOD # => "pho"

FOOD = "ramen" # warning: already initialized constant FOOD

FOOD = "pho"
FOOD[0] = "P"
p FOOD # => "Pho"


FOOD = "pho"
$drink = "ice coffee"

def my_favorite
  p FOOD
  p $drink
end 

my_favorite

# Blocks do not have their own scope
def say_bye
  message = "bye"
  
  3.times do
    p message # message can be referenced
  end
end 

say_bye

# conditionals or while loops also don't have their own scope
# part of containing scope

if true
  drink = "cortado"
end 

p drink # drink still accessible