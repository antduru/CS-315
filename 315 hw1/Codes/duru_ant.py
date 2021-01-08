
# Implementing my function to use it later to print the pairs
def foo(k, d):
    print(k, d[k])


# Initializing the dictionary
my_dict = { 
        "first": 10,
        "second": 65,
        "third": 4,
        "fourth": 0,
        "fifth": 77 }
print("--------1-DICTIONARY HAS BEEN INITIALIZED---------")

# Getting the value for a given key
print("--------2-GETTING THE VALUE WITH \"third\" KEY---------")
my_value = my_dict["third"]
print("key: third, value: ", my_value)

# Adding element to the dictionary with key "sixth" and value 6
print("--------3-ADDING AN ELEMENT---------")
my_dict["sixth"] = 6
print("value ", my_dict["sixth"], " is added to the dictionary with key \"sixth\"")

# Removing element from the dictionary
print("--------4-REMOVING THE ELEMENT WITH KEY \"fourth\"---------")
my_dict.pop("second")
print("element with key \"second\" has been removed")

# Modifying an element
print("--------5-MODIFYING THE ELEMENT WITH KEY \"third\"---------")
print("current value of element with key \"first\" is: ", my_dict["first"])
my_dict["first"] = 56
print("After modify value of element with key \"first\" is: ", my_dict["first"])

# Searching for the existence of a key
print("--------6-SEARCHING FOR THE EXISTENCE OF A KEY---------")
if (my_dict.get("second") != None):
    print("the key \"second\" is in the dictionary with value: ", my_dict["second"])
else:
    print("the key \"second\" is not in the dictionary")
    

# Searching for the existence of a value
print("--------7-SEARCHING FOR THE EXISTENCE OF A VALUE---------")
if(list(my_dict.keys())[list(my_dict.values()).index(77)] != None):
    print("The value 77 is in the dictionary with key: ", list(my_dict.keys())[list(my_dict.values()).index(77)])
else:
    print("The value 77 is not in the dictionary")
    
# Loop to print pairs
print("--------8-PRINTING PAIRS---------")
for k in my_dict:
    foo(k, my_dict)
