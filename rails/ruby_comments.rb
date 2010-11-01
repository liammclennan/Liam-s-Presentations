
## ruby is a scripting language
## code in a file is executed when it is parsed
puts "I am alive world"

## variable declaration
person = 'liam'

## string interpolation
puts "#{person} is alive"

## class definition
 class Person
	
	#constructor
	def initialize
		## member variables
		@name = 'liam'
	end
	
	def name
		## implicit returns
		@name
	end 

	# #method definition
	def do_something
		yield self
	end

end

## blocks 
liam = Person.new
liam.do_something do |person|
	puts person.name
end

## dynamic
def liam.age
	27
end

puts liam.age
puts liam.send('age')

## ?? 
a,b = 1,2

puts a
puts b

## arrays
trolls = ['Ted', 'Bill', 'Bert']
trolls.each do |troll|
	puts troll
end

## other functional methods
big_trolls = trolls.map {|troll| troll.upcase}

## methods defined directly
def print_trolls(trolls)
	trolls.each do |troll|
		puts troll
	end
end

## optional parenthesis
print_trolls big_trolls

## all statements return a value
odd = true
print(if odd 
			"3"
		else
			"4"
		end)

## ranges
(1..5).each {|number| puts number}
('a'..'z').each {|letter| puts letter.upcase}

## first class regular expressions
if  /fox/.match "quick brown fox jumps"
	puts 'contains fox'
end

## substitution
puts("I am a cat person".gsub /cat/, 'dog')

## inverse conditionals
six_equals_nine = false
puts "6 is not nine" unless six_equals_nine

## OO style null checking
you_got = nil
puts you_got.nil?

## hash
methods = { 
	## lambdas
	:one => lambda { puts 'one' },  
	:two => lambda { puts 'two' },
	:multiply => lambda {|first,second| first * second}	
}

## access hash element. Call a lambda.
methods[:one].call()

## lambda with parameters
puts methods[:multiply].call(3,4)
puts methods[:multiply].call(7,7)

## modify a hash. Compose lambdas.
methods[:square] = lambda {|input| methods[:multiply].call(input,input)}
puts methods[:square].call(8)

## method_missing
class Demo
	
	def method_missing(method_name, *args) 
		puts "Called #{method_name} with args: #{args * ', '}"
	end
   
end   

call_me = Demo.new
call_me.this_method_doesnt_exist(1,2,'a', false)
puts call_me.respond_to?(:this_method_doesnt_exist)

# inheritance
class Developer < Person

end