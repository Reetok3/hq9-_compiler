class HQ9Plus
	def initialize(src)
		@src = src
		@count = 0
		@slash = 0
	end
	def run
		@src.each_char do |c|
			case c
			when "H"
				# Hello, World
				hello
			when "Q"
				# Quine
				quine
			when "9"
				# 99 of bottles of beer
				print_99_of_bottles_of_beer
			when "+"
				# Plus
				plus
			when "S"
				say
			end
		end
	end
	def hello
		puts "Hello, world!\n"
	end
	def quine
		print @src
	end
	def print_99_of_bottles_of_beer
		result = []
		99.downto(1) do |i|
			lyrics = "#{i} bottle#{"s" if i > 1} of beer on the wall, #{i} bottle#{"s" if i > 1} of beer.\n"
			if (i == 1)
				lyrics += "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
			elsif i == 92
				lyrics += "Take one down and pass it around, #{i - 1} bottle#{"s" if i > 2} of beer on the wall.\n"
			else
				lyrics += "Take one down and pass it around, #{i - 1} bottle#{"s" if i > 2} of beer on the wall.\n"
			end
			result << lyrics
			puts result
		end
	end
	def plus
		@count += 1
	end
	def say
		`say HQ9+`
	end
end
HQ9Plus.new(ARGF.read).run
