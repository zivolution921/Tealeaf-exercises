# 1.assign variable for number 1 and 2
# 2. assigning operators + - / *
# 3. calculate the results
# 4. assign a message
def say(msg)
	Kernel.puts("===============#{msg}==================")
end

def valid_number?(num)
	num.to_i != 0
end

def operation_to_message(op)
	case op
	when '1'
		"Adding"
	when '2'
		"Substracting"
	when '3'
		"Multiplying"
	when '4'
		"Diviging"
	end
end

say("Welcome to Calculator! Enter your name:")

name = ''
loop do 
	name = Kernel.gets().chomp()

	if name.empty?()
		say("Make sure to use a valid name.")
	else
		break
	end
end

say("Hi #{name}!")

loop do #main loop

	num1 = ''
	loop do
		say ("What is the first number?")
		num1 = Kernel.gets().chomp()

		if valid_number?(num1)
			break
		else
			say("Hmm... that does'nt look like  a  valid number")
		end
	end

	num2 = ""
	loop do
		say("What is your second number?")
		num2 = Kernel.gets().chomp()
		if valid_number?(num2)
			break
		else
			say("Hmm... that does not look like a valid number")
		end
	end

	operator_say = <<-MSG
		What operation would you like to perform?
		1) add
		2) substract
		3) multiply
		4) divide
	MSG

	say(operator_say)

	say("What operation would you like to perform? 1)add 2)substract 3)multiply 4)divide")
	operator  = ''
loop do
	operator = Kernel.gets().chomp()
	if %w(1 2 3 4).include?(operator)
		break
	else
		say("Must choose 1,2,3 or 4")
	end
end

say(" #{operation_to_message(operator)}the two numbers...")

result = case operator
		 when '1'
		 	result = num1.to_i() + num2.to_i()
		 when '2'
		 	result = num1.to_i() - num2.to_i()
		 when '3'
		 	result = num1.to_i() * num2.to_i()
		 when '4'
		 	result = num1.to_f() / num2.to_f()
end

say("Result is #{result}")

say("Do you want to perform another calculation? (Y to calculate again?)")
answer = Kernel.gets().chomp()
break unless answer.downcase().start_with?('y')
end

say("Thank you for using the calculator. Good Bye!")




