require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
  collection << yield(array[i])
    i += 1
  end
end

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
#this used to say, hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
# The "require 'pry'" is what was found in the lab, and the directions guided me to put binding.pry right before line 12 (calling on the helho method with the array agreement). In the pry terminal, I copy/pasted the original version of line 12. Then, a binding.pry was placed right between the while line and the yield line.
# After opening pry up again, "yield(array[i])" was copy/pasted again and entered. This returned, "Hi, Tim".
#both puts and while returns as nil, but we don't want that. So simply erasing puts creates a return value to put what we yielded into the collection (an empty array, seen on line 5).

# amazing, right? IT'S ALL COMING TOGETHER!!!!!!!!!