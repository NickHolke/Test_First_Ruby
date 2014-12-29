def add(num1,num2)
	num1 + num2
end

def subtract(num1,num2)
	num1 - num2
end

def sum(array)
	if array == []
		0
	else
		array.inject(:+)
	end
end

def multiply(array)
	array.inject(:*)
end

def power(num,power)
	num ** power
end

def factorial(num)
	if num == 0
		1
	else
		(1..num).inject(:*)
	end
end



