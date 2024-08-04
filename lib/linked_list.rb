class LinkedList
  # Initialize creates the @list class instance variable and populates it with "nil" for the last value in the list.
  def initialize
    @list = ["nil"]
  end

  # append(word) takes the given argument and passes it through to_s to be added to the list.
  def append(word)
    value = to_string(word)
    @list.insert(-2, value)
    puts @list.join(" ")
  end

  def to_string(word)
    input = "( #{word} ) ->"
    return input
  end

  # Adds word to the beginning of the list.
  def prepend(value)
    @list.prepend("( #{value} ) ->")
    puts @list.join(" ")
  end

  # Outputs the number of elements in the list (including "nil")
  def size
    return @list.length
  end

  # Outputs the first element in the list
  def head
    return @list[0]
  end

  # Outputs the last element in the list (excluding "nil")
  def tail
    return @list[-2]
  end

  # Outputs the element at the given index.
  def at(index)
    return @list[index]
  end

  # Remove the last element in the list (excluding "nil")
  def pop
    if @list.length >= 2
      @list.delete_at(-2)
    end
  end

  # Confirms if a given element is in the list (true/false)
  def contains(element)
    @list.include?("( #{element} ) ->")
  end

  # Outputs index of given value, or 'Not found' if not in list.
  def find(value)
    found = false
    @list.each_with_index do |element, index| 
      if element == "( #{value} ) ->"
        puts index
        found = true
        break
      end
    end
  puts "Value does not exist." unless found
  end

  # Inserts value at given index without overwriting current value.
  def insert_at(index, value)
    @list.insert(index, "( #{value} ) ->")
  end

  # Deletes value at given index.
  def delete_at(index)
    @list.delete_at(index)
  end
end
