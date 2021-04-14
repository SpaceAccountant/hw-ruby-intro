# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
    return 0
  else
    result = 0
    arr.each { |x| result += x }
    return result
  end
end

def max_2_sum arr
  case arr.length
  when 0
      return 0
  when 1
      return arr[0]
  else
    a = arr[0]
    b = arr[1]
    for i in 2..( arr.length - 1 )
      x = arr[i]
      if x > a
        a = x
      elsif x > b
        b = x
      end
    end
    return a + b
  end
end

def sum_to_n? arr, n
  for i in 0..( arr.length - 1 )
    x = arr[i]
    for j in 0..( arr.length - 1 )
      if i != j
        y = arr[j]
        if x + y == n
          return true
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return !s.empty? && s[0].match( /[[:alpha:]]/ ) && !s.capitalize[0].match( /(A|E|I|O|U)/ )
end

def binary_multiple_of_4? s
  return !s.empty? && s.match?( /^(0|1)+$/ ) && s.to_i( 2 ) % 4 == 0
end

# Part 3

class BookInStock
  def initialize isbn, price
    if isbn.empty?
        raise ArgumentError.new( "Expected a non-empty string for isbn" )
    end
    if price <= 0
        raise ArgumentError.new( "Expected a value greater than 0 for price, got #{price}" )
    end

    @isbn = isbn
    @price = price
  end

  def isbn
    return @isbn
  end

  def isbn=( isbn )
    @isbn = isbn
  end

  def price
    return @price
  end

  def price=( price )
    @price = price
  end

  def price_as_string
    return "$%0.2f" % [@price]
  end
end
