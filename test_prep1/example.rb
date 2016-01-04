# =>local var scope

# str1 =  "hello"

# def my_method
#   puts str1
# end

# my_method


# local var with block inner scope have access to out scopes
# def str2
#   "from method"
# end

# [1].each do |n|
#   puts str2
#   str2 = "a new string"
# end

# puts str2


# => method args

# def run(str)
#   puts str
# end

# a = "hello"
# run(a)
# puts a

#method mutate
#pass by reference
# def run(str)
#   str << " world"
# end

# a = "hello"
# run a
# puts a 

# reassignment method local variable to a new value does not affect the variable
# def run(str)
#   str = "hello world"
# end

# a = "hello"
# run a

# puts a











