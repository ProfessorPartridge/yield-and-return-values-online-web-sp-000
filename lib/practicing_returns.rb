require 'pry'

def hello(array)
  i = 0
  collecton = []
  while i < array.length
    collecton << yield(array[i])
    i += 1
  end
end

binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
