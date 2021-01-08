# Online Python compiler (interpreter) to run Python online.
# Write Python 3 code in this online editor and run it.
var = 4
pretest = True
# check if python is posttest
print("-----------CHECK IF PRETEST OR POSTTEST-----------")
while(var > 10):
    var += 2
    pretest =  False
    print("Python is posttest in while loop")

# check if python is pretest
if(pretest == True):
    print("Python is pretest in while loop")
    

# Break statement
print("-----------BREAK STATEMENT-----------")
num = 3
loopCount = 1
while(num < 10):
    print("loop: ", loopCount, "  , num: ", num)
    num += 1
    loopCount += 1
    if(num == 6):
        break
print("end of while loop")
print("loop use break when the value is: " ,num)

# Continue statement
print("-----------CONTINUE STATEMENT-----------")
num = 2
loopCount = 1
while(num < 10):
    num += 1
    if(num == 5):
        num2 = num
        print(num , " is skipped")
        continue
    print("loop: ", loopCount, "  , num: ", num)
    loopCount += 1
print("end of while loop")
print("loop use continue when the value is: " ,num2)

# while-else statement
print("-----------WHILE-ELSE STATEMENT-----------")
num = 9
while (num > 2):
  print("num is: " ,num)
  num -= 1
else:
  print("num is less than 2")