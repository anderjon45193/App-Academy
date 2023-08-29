# FIRST ITERATION
# acc = 11
# el = 7
# new_acc = 18
[11, 7, 2, 4].inject { |acc, el| acc + el } # => 24

# SECOND ITERATION
# acc = 18
# el = 2
# new_acc = 20]

# LAST ITERATION
# acc = 20
# el = 4
# new_acc = 24

# Total product of an array
p [11, 7, 2, 4].inject { |acc, el| acc * el } # => 616

# Finding minimum value in an array
p ([11, 7, 2, 4].inject do |acc, el|
  if el < acc
    el
  else
    acc
  end 
end) # => 2