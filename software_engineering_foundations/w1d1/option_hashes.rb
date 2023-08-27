# If you have a method that accepts a hash as an argument
# you can ommit the braces when passing in the hash
def method(hash)
  p hash # {"location"=>"SF", "color"=>"red", "size"=>100}
end 

method({"location"=>"SF", "color"=>"red", "size"=>100})

# this also works
method("location"=>"SF", "color"=>"red", "size"=>100)