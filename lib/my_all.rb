require 'pry'

def my_all?(collection)
    i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i = i + 1
  end
  ret = block_return_values.any? do |e|
    e == false
  end
  ret = !ret

  ret
end