# closures are the key of local variables
# closures are chunk of codes that can be executed. has access to surrounding. It build closure around surrounding context called binding
# Drag all surrounding so block can be executed has access to out scope because it build it
# why we want to write a method
#ruby block create scope for local variable as inner scope
# variable scope is determined by where it is initialized

[1,2,3].each do |num|
  puts num
end

# inner scope variables cannot be accessed in the outer scope

loop do   # the block create an inner scope
  b = 1
  break
end

puts b


# variable shadowing
# the block parameter is n which represent each element iterates in the loop
[1,2,3].each do |n|
  puts n
end

# if we have another variable named n in the outer scope

n = 10
[1,2,3].each do |n|
  puts n
end


#you must pass local variable to a method or in the parameters