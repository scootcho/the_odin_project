def add(n1 , n2)
  n1 + n2
end

def subtract(n1 , n2)
  n1 - n2
end

def sum(n)
  n.inject(0,:+)
end

def multiply(*n)
  n.inject(:*)
end

def power(num, exponent)
  num ** exponent
end

def factorial(n)
  return 1 if n <= 1
  (2..n).inject(:*)
end
