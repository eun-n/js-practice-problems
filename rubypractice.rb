# fizzbuzz but no elsif statements

# class Fizzbuzz
#   def initialize(name)
#    	@name = name
# 	end

# def start
# 	range = (1..100)
# 	arange = range.to_a

# 	i = 4
# 	while i < arange.length do
# 	  arange[i] = "buzz"
# 	  i += 5
# 	end	
 
# 	j = 2
# 	while j < arange.length do
# 	  arange[j] = "fizz"
# 	  j += 3
# 	end
	
# 	k = 14
# 	while k < arange.length do
# 	  arange[k] = "fizzbuzz"
# 	  k += 15
# 	end
# 	puts arange
# 	self
# end
# end


# fb1 = Fizzbuzz.new("fb1")
# fb1.start



# def fizzbuzz(i)
# 	(0..i) do |n| puts n % 3 == 0 ? (n % 5 == 0 ? "fizz buzz" : "fizz") : (n % 5 == 0 ? "buzz" : n) end
# end
# fizzbuzz(100)


# Write a function that returns the fibonacci sequence up to n

# class Fibonacci
# 	def initialize (name)
# 		@name = name
# 	end

# 	def fib(num)
# 		arr = [0,1]
# 		if num.to_i == 1 
# 			puts arr[0]
# 		elsif num.to_i <1
# 			puts "Please select an integer greater than 0"
# 		elsif num.to_i > 1
# 			i = 2
# 			while i < num.to_i do
# 			  arr[i] = arr[i-2] + arr[i-1]
# 			  i += 1
# 			end	
# 			puts arr
# 			self
# 		end
# 	end	
# end

# fib1 = Fibonacci.new("fib1")
# fib1.fib("30")


# def fib(n)
# 	if n < 2 
# 		return 0
# 	else 
# 		return (1..(n - 2)).inject([0, 1]) { | fib | fib << fib.last(2).inject(:+) }
# 	end
# end

# puts fib(3)

# // Write a function called 'average' that accepts a list of
# // numbers and returns the average. The average
# // of an empty list should be considered zero.

# class Average
# 	def initialize (name)
# 		@name = name
# 	end

# 	def average(list)
# 		arr = list.to_a
# 		sum = 0
# 		if arr == []
# 			puts 0
# 		else
# 			i = 0
# 			while i < arr.length do
# 			  sum += arr[i].to_i
# 			  i += 1
# 			end	
# 			puts sum/arr.length
# 			self
# 		end
# 	end	
# end

# ave1 = Average.new("ave1")
# ave1.average([10, 20, 30])