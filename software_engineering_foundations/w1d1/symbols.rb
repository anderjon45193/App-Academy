# symbols are immutable - cannot change
# strings are mutable - can change
str = "hello" # the string
sym = :hello # the symbol

p str.length # => 5
p sym.lenth # => 5

p str[1]    # => "e"
p sym[1]    # => "e"

p str == sym # => false
# a string is different from a symbol!

# Symbol objects represent named identifiers inside the Ruby interpreter

module One
  class Fred
  end 
  $f1 = :Fred
end 
module Two
  Fred = 1
  $f2 = :Fred
end 

def Fred()
end 

$f3 = :Fred

$f1.object_id # => 2514190
$f2.object_id # => 2514190
$f3.object_id # => 2514190


bootcamp_1 = {:name=>"app academy", :color=>"red"}
p bootcamp_1

bootcamp_2 = {name:"map academy", color:"scarlet"}
p bootcamp_2