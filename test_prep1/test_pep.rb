# a local variable is a memory locations that holds data tot the program
# variable scope determines where the variable is avaialable, where it is created or initialized
# a block is a pieve of code following method invocation

# variable scope in a BLOCK

# Variable scope is where the variable is initialted or created

a = 5  # the variable is initialized in the outer scope

3.times do |n|
  a = 3  # the variable is accessible here in the inner scope
end

puts a    # the value of a is 3 because it is avaialable in the inner scope that allow to reassign

a = 5

# variable scope in METHOD

a = 5

def some_method
  a = 3
end
puts a  # the value of a is 5 because method create their own scope outside execution

# outer scope variables can access the inner scope but not vice versa

a = 1  # the outer scope variable

loop do   # the block creates an inner scope
  puts a  # => 1
  a = a + 1   # "a" is re-assinged to a new value
  break
end

puts a   # => 2 "a" was re-assigned in the inner scope

# variable shadowing  in a block
n = 10
[1,2,3].each do |n|   # parameter is captured
  puts n   # the block parameter n uses inner scope n and diregard the outer scope, prevent us from making changes
end


# METHODS

# Arguments are pieces of information that are sent to a method 
# to be modified or used to return a specific result.
# We "pass" arguments to a method when we call it.

def say(words)
  puts words    # method
end
say("hello")

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

