# FIRST ITERATION
# acc = 100
# el = 11
# new_acc = 111
[11, 7, 2, 4].inject(100) { |acc, el| acc + el }

# SECOND ITERATION
# acc = 111
# el = 7
# new_acc = 118
[11, 7, 2, 4].inject(100) { |acc, el| acc + el }

# THIRD ITERATION
# acc = 118
# el = 2
# new_acc = 120
[11, 7, 2, 4].inject(100) { |acc, el| acc + el }

# FOURTH ITERATION
# acc = 120
# el = 4
# new_acc = 124
[11, 7, 2, 4].inject(100) { |acc, el| acc + el } # => 124

# Inject that sums up all even numbers of an arrray
[11, 7, 2, 4].inject(0) do |acc, el|
  if el.even?
    acc + el
  else
    acc
  end 
end # => 6
      