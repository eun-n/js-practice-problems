grades = ['A','B','B','C','C','C','D','F']
# should print how many of each letter

class Bucket
	def initialize (name)
		@name = name
	end

	def bucket(list)
		bucks = []
		arr = list.to_a
			i = 0
			while i < arr.length-1 do
				if(arr[i] == 0)
					bucks.push(i, arr[i])
				else
					if(arr[i] == arr[i-1])
					i = arr.length-1
				else
			  i -= 1
			end	
		end
			puts arr
			self
	end	
end

b1 = Bucket.new("b1")
b1.bucket(grades)