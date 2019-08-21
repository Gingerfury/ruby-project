#write your code here
def add(x,y)
  return x+y
end

def subtract(x,y)
  return x - y
end

def sum(numbers)
  result = 0
  numbers.each { |i| result += i }
  return result
end

def multiply(numbers)
  result = 1
  numbers.each { |i| result *= i }
  return result
end

def power(a,b)
  return a**b
end

def factorial(n)
  m = n
  if n == 0
    return 1
  elsif n == 1
    return 1
  else
    while(n > 1)
      m *= (n-1)
      n -= 1
    end
  end
  return m
end
