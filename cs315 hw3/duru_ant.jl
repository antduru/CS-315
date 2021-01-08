println("----------------------NESTED SUBPROGRAMS----------------------")
function f()
    x = 4
    function g(x)
        x = x * 2
        return x
    end
    b = g(x)
    return b
end

a = f()
println("a: $a")


# here, function g is defined inside of the function f.
# function g takes one parameter and the variable x, which is
# defined in f is passed as that parameter. The value x is returned from
# function g and assigned to variable b, which is returned from function f.
# From the output it can be seen that, the function returns 8, which means
# it takes the value from the inner function g, since there is return statement
# and a function call with assignment.



function h()
    x = "cs315" # x is local variable and cannot go outer h
    function j(x)
        x = 315 # x is local variable and cannot go outer function j
    end
    println("x: $x")
end

b = h()


# Here, function j is defined inside of the function h.
# Since x, that is defined j is local and not returned with a call, it cannot
# go to outside j. That's why, what is printed inside h is the h's local variable
# x, which is "cs315" string.


println("----------------------LOCAL VARIABLE SCOPES----------------------")
function f()
    var = 3 #var is locally created here
end


var = "str" #var is globally created
f() # function is called
println("var is: $var")

# even if var is the name of both global and local variables and function is 
# called AFTER the global declaration,when var is printed, it will print "str"
# since function f has local scope and variables cannot go outside from the
# function.


# function g()
#     var2 = 5
# end

# println(var2)

# this would cause an error since var2 inside the function g is locally
# created and has no value outside the function (globally). Therefore,
# in global scope there is no such variable var2. The error would tell
# us that var2 is not defined. I am commenting this now in favor of 
# displaying other outputs, If you want to see the error, please uncomment
# line 60-64

println("----------------------PARAMETER PASSING----------------------"),
function f(n::Integer)
    n = n * 5
    return n
end

a = 4
b = f(a)
println("a: $a")
println("f(a): $b")


# This is one of the parameter passings in Julia. Here,
# the parameter does not mutate globally when the function is called 

println()
function g(x, y)
    x .+= y
    return x
end

x = [4, 5, 6]
y = 1
println("before the function call x was: $x")
out = g(x, y)
println("after the function call x is: $x")
println("y: $y")
println("out: $out")


# This is pass-by-sharing with mutation. Arrays are mutable values by using
# functions. Here, an array x and an integer y is passed as parameters to the
# function g. x .+= y statement is to increment every element of x by the value 
# of y. Finally, x is returned. Now, in the global scope, the array x has been 
# changed due to the function call. The elements of x has been incremented by 1
# (the value of y) in the global scope even if x was only passed as a parameter.
# This is pass-by-sharing.

println()
function h(a)
    a[1] .+= 5
    return a
end

a = [3,3,3]
s = h(a)
println("a: $a")
println("s: $s")


# This is another pass-by-sharing with mutation method. An array "a" is created
# and passed to the function h. The first element in array a is incremented by 5
# and the array a is returned. When we print a, and the function call, we would
# see both of them are the same, which means a is changed by the function call



println("----------------------KEYWORDS / DEFAULT PARAMETERS----------------------")
function keyfunction(x, y; var1=5, var2=10)
    println("this function does this: ")
    println("( $x + $y ) * $var1 * $var2")
    x = (x + y) * var1 * var2
    return x
end


x = 3
y = 2
zero_default = keyfunction(x, y)
println("zero_default: $zero_default")
println()
one_default = keyfunction(x, y, var2=4)
println("one_default: $one_default")
println()
two_defaults = keyfunction(x, y, var1=2, var2=20)
println("two_defaults: $two_defaults")


# there are 2 default parameters in keyfunction (var1 and var2)
# in Julia, we can call a function using these default parameters.
# If no default parameters is passed, the default values are used.
# We can also pass default parameters with different values than the
# default values and function uses the values that we have passed rather
# than the default values.


println("----------------------CLOSURES----------------------")
a = 3
function f(b::Int64)
    println("a is global a: $a")
    println("b is parameter b: $b")
    c = 6
    println("c is local c: $c")
    function closure(d)
        println("*************************")
        println("a is global a: $a")
        println("d is parameter d: $d")
        e = 4
        println("e is local e: $e")
        println("b is closed value(outer parameter) b: $b")
        println("c is closed value(outer local) c: $c")
    end
end

param = 5
var = f(param)
var(10)

# closure is defined inside the function f.
# Normally f can get global variable a, parameter b and local variable c.
# Closure can access to global variable a, parameter d, local variable e,
# outer local c and outer parameter b.
# it is called as I wrote

# we assign the return value of f to var
# when we pass 10 as parameter to var, the closure occurs


