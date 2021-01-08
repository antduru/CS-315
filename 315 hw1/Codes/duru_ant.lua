-- my function definition to print pairs
function foo(k, v)
    print("key: ", k, ", value: ", v)
end

-- Initializing the table
local myTable = { ["first"] = 1, ["second"] = 2, ["third"] = 3, ["fourth"] = 4}
print("--------1-TABLE HAS BEEN INITIALIZED---------")

-- Getting value for a given key
print("--------2-GETTING VALUE BY KEY---------")
local myValue = myTable["first"]
print("the value for the key \"first\" is: ", myValue)

-- Adding an element
print("--------3-ADDING AN ELEMENT---------")
myTable["sixth"] = 6
print("An element with key \"sixth\" and value 6 has been added.")

-- Removing an element
print("--------4-REMOVING AN ELEMENT---------")
myTable["third"] = nil
print("The element with key \"third\" has been removed.")

-- Modifying an element
print("--------5-MODIFYING AN ELEMENT---------")
print("Before Modify, the value with key \"fourth\" is: ", myTable["fourth"])
myTable["fourth"] = 5
print("After modify, the value with key \"fourth\" is: ", myTable["fourth"])

-- Search for existence of key
print("--------6-LOOKING IF KEY \"second\" exists---------")
if(myTable["second"] ~= nil) then
    print("The key \"second\" exists in the table with value: ", myTable["second"])
else
    print("The key \"second\" does not exist in the table")
end
    

-- Search for existence of value,
print("--------7-LOOKING IF VALUE 56 exists---------")
local bool = false
for k, v in pairs(myTable) do
    if v == '56' then
        print("56 is in the table with key: ", k)
        bool = true
    end
end
if bool ~= true then
    print("56 is not in the table.")
end

-- Loop
print("--------8-LOOP THROUGH THE TABLE AND PRINT THE PAIRS---------")
for k,v in pairs(myTable) do foo(k,v) end