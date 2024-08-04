class LinkedList
  def initialize
    @list = ["nil"]
  end

  def append(word)
    value = to_string(word)
    @list.insert(-2, value)
    puts @list.join(" ")
  end

  def to_string(word)
    input = "( #{word} ) ->"
    return input
  end

  def prepend(value)
    @list.prepend("( #{value} ) ->")
    puts @list.join(" ")
  end

  def size
    return @list.length
  end

  def head
    return @list[0]
  end

  def tail
    return @list[-2]
  end

  def at(index)
    return @list[index]
  end

  def pop
    if @list.length >= 2
      @list.delete_at(-2)
    end
  end

  def contains(element)
    @list.include?("( #{element} ) ->")
  end

  def find(value)
    @list.each_with_index { |element, index| 
    if element == "( #{value} ) ->"
      puts index
    else
      puts "Value not found."
    end
    }
  end

  def insert_at(index, value)
    @list.insert(index, "( #{value} ) ->")
  end

  def delete_at(index)
    @list.delete_at(index)
  end
end
