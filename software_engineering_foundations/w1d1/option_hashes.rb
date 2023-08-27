# If you have a method that accepts a hash as an argument
# you can ommit the braces when passing in the hash
def method(hash)
  p hash # {"location"=>"SF", "color"=>"red", "size"=>100}
end 

method({"location"=>"SF", "color"=>"red", "size"=>100})

# this also works
method("location"=>"SF", "color"=>"red", "size"=>100)

# This can really clean things up when you have other arguments
# before the hash
def modify_string(str, options)
  str.upcase! if options["upper"]
  p str * options["repeats"]
end 

# less readable
modify_string("bye", {"upper"=>true, "repeats"=>3}) # => "BYEBYEBYE"
# more readable
modify_string("bye", "upper"=>true, "repeats"=>3) # => "BYEBYEBYE"