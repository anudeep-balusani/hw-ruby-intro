# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0,:+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 1
	  arr[0]

  elsif arr.length == 0
	  arr.length
  
  else
	  arr.sort!
	  arr[-1]+arr[-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0 || arr.length == 1 
	  return false 
  end
  l = 0
  r = arr.length - 1
  arr.sort!
  while  l < r
	  if arr[l] + arr[r] == n
		  return true 
	  elsif arr[l] + arr[r] < n
		 l += 1 
	  else
		  r -= 1 
	  end	  
  end

  return false 
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  if s == ''
	  return false 
  end

  if !s.match /^[A-Za-z]/
	  return false 
  end

  if vowels.include? s[0]
	  return false 
  else
	  return true 
  end

end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  str = s
  if str.delete('01') != ''
	  return false 
  end
  
  if str == '0'
	  return true 
  end
   
  if s[-1] == '0' && s[-2] == '0'
	  return true 
  else 
	  return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
	def initialize(isbn, price)
		raise ArgumentError, "ISBN is an empty string." unless isbn != ""
		raise ArgumentError, "Price is less than or equal to zero." unless price > 0
		@isbn = isbn
		@price = price
	end

	attr_accessor :isbn, :price

	def price_as_string
		return "$" + "#{'%.2f' % @price}"
	end
end
