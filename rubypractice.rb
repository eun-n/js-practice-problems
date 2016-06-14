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



# Stutter
# Write a method stutter that takes a stack of integers as a parameter and 
# replaces every value in the stack with two occurrences of that value.
# Note that you must preserve the orginial order. 


# class Stutter
# 	def initialize (name)
# 		@name = name
# 	end

# 	def stutter(list)
# 		arr = list.to_a
# 			i = 0
# 			while i < arr.length do
# 			  arr.insert(i, arr[i])
# 			  i += 2
# 			end	
# 			puts arr
# 			self
# 	end	
# end

# stu1 = Stutter.new("stu1")
# stu1.stutter([10, 20, 30])

# class Stutter
# 	def initialize (name)
# 		@name = name
# 	end

# 	def stutter(arr)
# 		arry = []
# 			i = 0
# 			while i < arr.length do
# 			  arry.push(arr[i])
# 			  arry.push(arr[i])
# 			  i += 1
# 			end	
# 			puts arry
# 			self
# 	end	
# end

# stu1 = Stutter.new("stu1")
# stu1.stutter([10, 20, 30])


#Expunge
# Write a method expunge that accepts a stack of integers as a parameter and makes sure that the stack's elements
# are in non-decreasing order form top to bottom, by removing from teh stack any element that is smaller
# than any element(s) on top of it.

# class Expunge
# 	def initialize (name)
# 		@name = name
# 	end

# 	def expunge(list)
# 		arr = list.to_a
# 			i = arr.length-1
# 			while i > 0 do
# 				if(arr[i] > arr[i-1])
# 					arr.insert(i-1, arr[i])
# 					arr.delete_at(i+1)
# 					i = arr.length-1
# 				else
# 			  i -= 1
# 			end	
# 		end
# 			puts arr
# 			self
# 	end	
# end

# ex1 = Expunge.new("ex1")
# ex1.expunge([10, 20, 30, 40, 50])

# class Expunge
# 	def initialize (name)
# 		@name = name
# 	end

# 	def expunge(arr)
# 			i = arr.length-1
# 			while i > 0 do
# 				if(arr[i] > arr[i-1])
# 					a = arr.pop
# 					arr.push(arr[i-1])
# 					arr.push(a)
# 					arr.shift
# 					arr.shift
# 					i += 1
# 				else
# 			  i += 1
# 			end	
# 		end
# 			puts arr
# 			self
# 	end	
# end

# ex1 = Expunge.new("ex1")
# ex1.expunge([10, 20, 30, 40, 50])

# Shift
# Write a method shift that takes a stack of integers and an integer n as parameters and that shifts n 
# values from the bottom of the stack to the top of the stack. For example, if a variable called s stores 
# the following sequence of values:
# ​
# bottom [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] top 
# If we make the call shift(s, 6); the method shifts the six values at the bottom of the stack to the top of 
# the stack and leaves the other values in the same order producing:
# ​
# bottom [7, 8, 9, 10, 6, 5, 4, 3, 2, 1] top 
# Notice that the value that was at the bottom of the stack is now at the top, the value that was second 
# from the bottom is now second from the top, the value that was third from the bottom is now third 
# from the top, and so on, and that the four values not involved in the shift are now at the bottom of 
# the stack in their original order. If s had stored these values instead:
# ​
# bottom [7, 23, -7, 0, 22, -8, 4, 5] top 
# If we make the following call: shift(s, 3); then s should store these values after the call:
# ​
# bottom [0, 22, -8, 4, 5, -7, 23, 7] top 
# You are to use one queue as auxiliary storage to solve this problem. You may assume that the parameter 
# n is >= 0 and not larger than the number of elements in the stack.

# class Shift
# 	def initialize (name)
# 		@name = name
# 	end

# 	def shift(arr, n)
# 			i = 0
# 			while i < n do
# 				arr.push(arr[0])
# 				arr.shift()
# 				i +=1
# 			end
# 			puts arr
# 			self
# 	end	
# end

# shy	 = Shift.new("shy")
# shy.shift([10, 20, 30, 40, 50], 3)

# Example 1

# Add a node to an empty list

# root -> nil
# root -> 43 -> nil

# Solution:
# class Node
#   attr_accessor :data, :next

#   def initialize data
#     @data = data
#     @next = nil
#   end

#   def to_s
#     output = @data.to_s
#     if @next != nil
#     end
#     output += ' > ' + @next.to_s unless @next.nil?
#     output
#   end
# end


# class LinkedList
#   attr_accessor :head, :tail

#   def initialize
#     @head = nil
#     @tail = nil
#   end

#   def insert_front data
#     temp = @head
#     @head = Node.new(data)
#     @head.next = temp
#     @tail = @head if @tail.nil?
#   end

#   def insert_end data
#     temp = @tail
#     @tail = Node.new(data)
#     temp.next = @tail unless temp.nil?
#     @head = @tail if @head.nil?
#   end

#   def to_s
#     @head.to_s
#   end
# end

# list = LinkedList.new
# list.insert_end 43

# puts list.to_s

# root = Node.new 43

# Example 2

# Add a node at the beginning of the list

# root -> 2 -> 3 -> 4 -> nil
# root -> 1 -> 2 -> 3 -> 4 -> nil

# Solution:

# class Node
#   attr_accessor :data, :next

#   def initialize data
#     @data = data
#     @next = nil
#   end

#   def to_s
#     output = @data.to_s
#     if @next != nil
#     end
#     output += ' > ' + @next.to_s unless @next.nil?
#     output
#   end
# end


# class LinkedList
#   attr_accessor :head, :tail

#   def initialize
#     @head = nil
#     @tail = nil
#   end

#   def insert_front data
#     temp = @head
#     @head = Node.new(data)
#     @head.next = temp
#     @tail = @head if @tail.nil?
#   end

#   def insert_end data
#     temp = @tail
#     @tail = Node.new(data)
#     temp.next = @tail unless temp.nil?
#     @head = @tail if @head.nil?
#   end

#   def to_s
#     @head.to_s
#   end
# end

# list = LinkedList.new
# list.insert_end 2
# list.insert_end 3
# list.insert_end 4
# list.insert_front 1

# puts list.to_s

# node = Node.new 1
# node.next = root
# root = node

# Problem 1

# Add a node in the second place

# root -> 1 -> 3 -> 4 -> nil
# root -> 1 -> 2 -> 3 -> 4 -> nil

# class Node
#   attr_accessor :data, :next

#   def initialize data
#     @data = data
#     @next = nil
#   end

#   def to_s
#     output = @data.to_s
#     if @next != nil
#     end
#     output += ' > ' + @next.to_s unless @next.nil?
#     output
#   end
# end


# class LinkedList
#   attr_accessor :head, :tail

#   def initialize
#     @head = nil
#     @tail = nil
#   end

#   def insert_front data
#     temp = @head
#     @head = Node.new(data)
#     @head.next = temp
#     @tail = @head if @tail.nil?
#   end

#   def insert_end data
#     temp = @tail
#     @tail = Node.new(data)
#     temp.next = @tail unless temp.nil?
#     @head = @tail if @head.nil?
#   end

#   def insert_sec data
#   	temp = @sec
#   	@sec = Node.new(data)
  	
#   end

#   def to_s
#     @head.to_s
#   end
# end

# list = LinkedList.new
# list.insert_end 2
# list.insert_end 3
# list.insert_end 4
# list.insert_front 1

# puts list.to_s

# Problem 2

# Add a node to the end

# root -> 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> nil
# root -> 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> 8 -> nil

# Problem 3

# Add a node second to the end

# root -> 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 8 -> nil
# root -> 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> 8 -> nil

# Problem 4

# Delete the first node from the list.

# root -> 1 -> 2 -> 3 -> nil
# root -> 2 -> 3 -> nil

# Problem 5

# Delete everything from the list.

# root -> 34 -> 45 -> 78
# root -> nil

# Problem 6

# Manually stutter an existing list (make each item appear twice)

# root -> 23 -> 17 -> 8 -> nil
# root -> 23 -> 23 -> 17 -> 17 -> 8 -> 8 -> nil

# Problem 7

# Manually reverse an existing linked list

# root -> 3 -> 4 -> 5 -> 6 -> nil
# root -> 6 -> 5 -> 4 -> 3 -> nil


# input arrays


# def merge(aa, bb)
# 	arr = aa.to_a
# 	brr = bb.to_a
# 	crr = []
# 		while arr != [] && brr != [] do
# 			if(arr[0] < brr[0])
# 				crr.push(arr[0])
# 				arr.shift()
# 			else
# 		  crr.push(brr[0])
# 		  brr.shift()
# 		end
# 		while (arr != [] && brr  == 0) || (brr != [] && arr ==[]) do
# 		if( arr == [] && brr != [])
# 			crr.push(brr[0])
# 			brr.shift()
# 		elsif (arr!=[] && brr == [])
# 			crr.push(arr[0])
# 			arr.shift()
# 		end
# 	end
# 	end
# 		puts crr.to_s
# 		self
# end	

# def merge_sort(a)
# 	ar = a.to_a
# 	if ar == []
# 		return merge(ar)
# 	elsif ar.length == 1
# 		return ar
# 	elsif ar.length >1
# 		cr = ar.slice(0,(ar.length)/2)
# 		br = ar.slice((ar.length)/2, ar.length)
# 		puts cr.to_s
# 		puts br.to_s
# 		return merge_sort(cr) && merge_sort(br) && merge(cr, br)
# 		# return merge(merge_sort(cr), merge_sort(br))
# 	end
# 	self
# end

# a2 = [2, 4, 11, 0, 10, 12]
# a1 = [5, 8, 2, 5, 3, 5, 1, 7, 8, 5, 6, 5, 1]
# a1 = [42, 37, 4, 90]
# merge_sort(a2)
# a3 is now [1, 2, 3, 4, 5, 6, 7, 8]


def merge_sort(m)
  return m if m.length <= 1
 
  middle = m.length / 2
  left = merge_sort(m[0...middle])
  right = merge_sort(m[middle..-1])
  merge(left, right)
end
 
def merge(left, right)
  result = []
  until left.empty? || right.empty?
    result << (left.first<=right.first ? left.shift : right.shift)
  end
  result + left + right
end
 
ary = [7,6,5,9,8,4,3,1,2,0]
p merge_sort(ary)  