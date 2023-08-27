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

# count
# return a number representing the count of the elements that result in
# true when passed into the block
p [1, 2, 3, 4, 5, 6].count { |el| el.even? } # => 3
p [1, 3, 5].count { |el| el.even? } # => 0

# Returns the number of elements
# If an argument is given, counts the number of elements which equal obj using ==.
# If a block is given, counts the number of elements for which the block returns
# a true value
ary = [1, 2, 4, 2]

ary.count # => 4
ary.count(2) # => 2
ary.count { |x| x%2 == 0 } # => 3

# Sum
# return the total sum of all elements
p [1, -3, 5].sum # => 3

# If a block is given, the block is applied to each element before addition
# If ary is empty, it returns init
# sum(init=0) => number
# sum(init=0) {|e| expr } => number
[].sum # => 0
[].sum(0.0) # => 0.0
[1, 2, 3].sum # => 6
[3, 5.5].sum # => 8.5
[2.5, 3.0].sum(0.0) { |e| e * e } # => 15.25
[Object.new].sum  # => TypeError

# Obtaining arithmetic meaning using sum method!
mean = ary.sum(0.0) / ary.length

# Sum method can be used for non-numeric objects by explicit init argument
["a", "b", "c"].sum("") # => "abc"
[[1], [[2]], [3]].sum([]) # => [1, [2], 3]


# Max and min
# Return the maximum or minimum element
p [1, -3, 5].min # => -3
p [1, -3, 5].max # => 5
p [].max # => nil

ary = %w(albatross dog horse)
ary.min # => "albatross"
ary.min { |a, b| a.length <=> b.length } # => "dog"