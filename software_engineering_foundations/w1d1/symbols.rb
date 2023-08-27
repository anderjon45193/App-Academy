str = "hello" # the string
sym = :hello # the symbol

p str.length # => 5
p sym.lenth # => 5

p str[1]    # => "e"
p sym[1]    # => "e"

p str == sym # => false
# a string is different from a symbol!