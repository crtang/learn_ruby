#write your code here
def add num1, num2
	num1 + num2
end

def subtract num1, num2
	num1 - num2
end

def sum arr
	sum = 0

	arr.each do |x|
		sum = sum + x
	end

	sum
end


# Extra Credit

def multiply num1, num2, *args
	product = num1 * num2

	args.each do |x|
		product = product * x
	end

	product
end

def power num1, num2
	num1 ** num2
end

def factorial num
	if num == 0 or num == 1
		1
	else
		num * factorial(num - 1)
	end
end
