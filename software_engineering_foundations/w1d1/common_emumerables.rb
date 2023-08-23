# all?
# Return true when all elements result in true when passed
# into the block.
p [2, 4, 6].all? { |el| el.even? } # => true
p [2, 3, 6].all? { |el| el.even? } # => false

# With no block given and no argument, returns true if self
# contains only truthy elements, false otherwise
[0, 1, :foo].all? # => true
[0, nil, 2].all? # => false
[].all? # => true

# With a block given and no argument, calls the block with each element
# in self; returns true if the block returns only truthy values, false
# otherwise.
[0, 1, 2].all? { |element| element < 3 } # => true
[0, 1, 2].all? { |element| element < 2 } # => false

# If argument obj is given, returns true if obj.=== every element
# false otherwise
['food', 'fool', 'foot'].all?(/foo/) # => true
['food', 'drink'].all?(/bar/) # => false
[].all?(/foo/) # => false
[0, 0, 0].all?(0) # => true
[0, 1, 2].all?(1) # => false

# none?
# Return true when no elements result in true when passed
# into the block.
p [1, 3, 5].none? { |el| el.even? } # => true
p [1, 4, 5].none? { |el| el.even? } # => false

# With no block given and no argument, returns true if self has no
# truthy elements, false otherwise
p [nil, false].none? # => true
p [nil, 0, false].none? # => false
[].none? # => true

# With a block given and no argument, calls the block with each
# element in self; returns true if the block returs no truthy
# value, false otherwise
p [0, 1, 2].none? { |element| element > 3 } # => true
p [0, 1, 2].none? { |element| element > 1 } # => false

# If argument obj is given, returns true if obj.=== no element,
# false otherwise
['food', 'drink'].none?(/bar/) # => true
['food', 'drink'].none?(/foo/) # => false
[].none?(/foo/) # => true
[0, 1, 2].none?(3) # => true
[0, 1, 2].none?(1) # => false

# one?
# Return true when exactly one element results in true
# when passed into the block
p [1, 4, 5].one? { |el| el.even? } # => true
p [1, 4, 6].one? { |el| el.even? } # => false
p [1, 3, 5].one? { |el| el.even? } # => false

# With no block given and no argument, returns true if self 
# has exactly one truthy element, false otherwise
[nil, 0].one? # => true
[0, 0].one? # => false
[nil, nil].one? # => false
[].one? # => false

# With a block given and no argument, calls the block with each
# element in self; returns true if the block 