
# my method to print
def foo(k, v)
    puts "key: #{k} , value: #{v}"
end


# Initializing the array
myHash = {"first" => 7, "second" => 19, "third" => 63, "fourth" => 81, "fifth" => 109}
puts "------1-Hash has been initialized.-------"


# Getting Value for a given key
puts "------2-Getting the value of key \"first\".-------" 
myValue = myHash["first"]
puts "the value with key \"first\" is: #{myHash["first"]}"

# Adding a new element
myHash["sixth"] = 6
puts "------3-Element with key \"sixth\" and value 6 is added.-------"


# Removing an element
myHash.delete("third")
puts "------4-Element with key \"third\" is deleted.-------"

# Modify the value of an element
puts "------5-Modifying value of an element.-------"
puts "The value of the element with key \"fifth\" is: #{myHash["fifth"]}"
myHash["fifth"] = 5
puts "After modification the element with key \"fifth\" is: #{myHash["fifth"]}"

# Search for existence of a key
puts "------6-Searching whether key \"second\" is in the hash.-------"
if myHash["third"] != nil
    puts "the key \"third\" is in the hash with value: #{myHash["third"]}"
else
    puts "the key \"third\" is not in the hash"

end


# Search for existence of a value
puts "------7-Searching whether value 81 is in the hash.-------"
if myHash.key(81) != nil
    puts "81 is in the hash with key: #{myHash.key(81)}"
else
    puts "81 is not in the hash"

end

# Loop
puts "------8-Iterating through hash and printing pairs.-------"
myHash.each do |key, value|
    foo(key, value)
end

