
# checking for pretest/posttest in loop and break statement in loop
puts "---------CHECK PRETEST/POSTTEST IN LOOP---------"
pretest = true

# check if posttest
loop do
  pretest = false
  puts "Ruby is posttest in loop"
  puts "now loop will use break"
  break
end
puts "loop has ended"

# check if pretest
if pretest ==  true then
    puts "Ruby is pretest in loop"
end


# checking for pretest/posttest in while loop
puts "---------CHECK PRETEST/POSTTEST IN WHILE LOOP---------"
pretest2 = true
var = 12
loopCount = 1
while var < 10 do
    pretest2 = false
    puts "Ruby is posttest in while loop"
end

if pretest2 == true then
    puts "Ruby is pretest in while loop"
end

# checking for pretest/posttest in until loop
puts "---------CHECK PRETEST/POSTTEST IN UNTIL LOOP---------"
val = 3
pretest_until = true
until val > 2  do
   puts "val = #{val}" 
   val +=1;
   pretest_until = false
   puts "Ruby is posttest in until loop"
end

if pretest_until == true then
    puts "Ruby is pretest in until loop"
end

# Break statement in while loop
puts "---------BREAK STATEMENT IN WHILE LOOP---------"
var2 = 1
puts "before the loop var is: #{var2}"
loopCount = 1
while var2 < 10 do
    if var2 == 7 then
        break
    end
    puts "loop: #{loopCount} var: #{var2} "
    var2 = var2 + 1
    loopCount = loopCount + 1
end
puts "end of while loop"
puts "loop uses break when the var was: #{var2}"

# Break statement in until loop
puts "---------BREAK STATEMENT IN UNTIL LOOP---------"
var3 = 5
puts "before the loop var is: #{var3}"
loopCount2 = 1
until var3 > 12 do
    if var3 == 9 then
        break
    end
    puts "loop: #{loopCount2} var: #{var3}"
    var3 = var3 + 1
    loopCount2 = loopCount2 + 1
end
puts "end of until loop"
puts "loop used break when the var was: #{var3}"

# Break statement in for loop
puts "---------BREAK STATEMENT IN FOR LOOP---------"
for i in 0..10
   if i == 6 then
       var4 = i
       break
   end
   puts "var: #{i}"
end
puts "end of for loop"
puts "loop used break when the var was: #{var4}"

# next statement in while loop
puts "---------NEXT STATEMENT IN WHILE LOOP---------"
var5 = 1
puts "before the loop var is: #{var5}"
loopCount3 = 1
while var5 < 11 do
    var5 = var5 + 1
    
    if var5 == 7 then
        temp = var5
        puts "value #{var5} is skipped"
        next
    end
    puts "loop: #{loopCount3} var: #{var5} "
    loopCount3 = loopCount3 + 1
end
puts "end of while loop"
puts "loop uses continue when the var was: #{temp}"


# next statement in until loop
puts "---------NEXT STATEMENT IN UNTIL LOOP---------"
var6 = 3
puts "before the loop var is: #{var6}"
loopCount4 = 1
until var6 > 9 do
    var6 = var6 + 1
    if var6 == 4 then
        temp = var6
        puts "value #{var6} is skipped"
        next
    end
    puts "loop: #{loopCount4} var: #{var6} "
    loopCount4 = loopCount4 + 1
end
puts "end of until loop"
puts "loop uses continue when the var was: #{temp}"


#next statement in for loop
puts "---------NEXT STATEMENT IN FOR LOOP---------"
for i in 0..9
    if i == 5 then
        temp = i
        puts "value #{i} is skipped"
        next
    end
    puts "value: #{i}"
end
puts "end of for loop"
puts "loop uses continue when the var was: #{temp}"
    

