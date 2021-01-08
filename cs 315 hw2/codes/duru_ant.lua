-- while loop test check
print("-----------CHECK PRETEST OR POSTTEST FOR WHILE LOOP-----------")
i = 3
pretest = true

-- posttest check
while i > 10 do
    pretest = false
    print("Lua is posttest for while loop.")
    i = i - 1
end

-- pretest check
if pretest == true then
    print("Lua is pretest for while loop.")
end

-- repeat until loop test check
print("-----------CHECK PRETEST OR POSTTEST FOR REPEAT UNTIL LOOP-----------")
j = 3
pretest2 = true

-- posttest check
repeat
    j = j + 1
    pretest = false
    print("Lua is posttest for repeat until loop")
until j >= 3

-- pretest check
if pretest == true then
    print("Lua is pretest for repeat until loop")
end

-- break statement for while loop
print("-----------BREAK STATEMENT FOR WHILE LOOP-----------")
var = 3
loopCount = 1
print("before the loop var is: ", var)
while var < 10 do
    print("loop: ", loopCount, " var: ", var)
    var = var + 1
    loopCount = loopCount + 1
    if(var == 8) then
        break
    end
end
print("end of while loop")
print("loop used break when value was: ", var)

-- break statement for repeat until loop
print("-----------BREAK STATEMENT FOR REPEAT UNTIL LOOP-----------")
var2 = 2
print("before the loop var is: ", var2)
loopCount2 = 1
repeat
    print("loop: ", loopCount2, " var: ", var2)
    var2 = var2 + 1
    loopCount2 = loopCount2 + 1
    if var2 == 5 then
        break
    end
until var2 > 10
print("end of repeat until loop")
print("loop used break when value was: ", var2)

-- break statement for for loop
print("-----------BREAK STATEMENT FOR FOR LOOP-----------")
loopCount3 = 1
for i = 3, 10, 1 do
    if i == 6 then
        var3 = i
        break
    end
    print("loop: ", loopCount3, " var: ", i)
    loopCount3 = loopCount3 + 1
end
print("end of for loop")
print("loop used break when value was: ", var3)