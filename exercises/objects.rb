class MyCar

	attr_accessor :color
	attr_reader :year


	def initialize(year, color, model)
		@year = year
		@color = color
		@model = model
		@current_speed = 0
	end

	def current_speed
		puts "You are now driving at the current_speed #{@current_speed} mph"
	end
	def speed_up(number)
		@current_speed += number
		puts "you push the gas and accelerate #{number} mph"
	end

	def slow_down(number)
		@current_speed -= number
		puts "You push on the brake to deaccelerate #{number} mph"
	end

	def shut_down
		@current_speed = 0
		puts "Lets park that bad boy!"
	end

	def spray_paint(color)
		self.color = color
		puts "Nice new #{color} paint jobs looks great!"
	end
end

	teslar = MyCar.new(2020, "red", "Teslar")
	teslar.speed_up(20)
	teslar.current_speed
	teslar.speed_up(20)
	teslar.current_speed
	teslar.slow_down(20)
	teslar.current_speed
	teslar.shut_down
	teslar.current_speed
	teslar.color = "black"
	puts teslar.color
	puts teslar.year
	teslar.spray_paint("yellow")

