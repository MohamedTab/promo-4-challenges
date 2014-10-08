def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
result = 0
  while min <= max
   result = result + min
   min = min + 1
  end
return result
end

def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
result = 0
  for min in (min..max)
    result = result + min
    min = min + 1
  end
return result
end


def sum_recursive(min, max)
  # CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
end

