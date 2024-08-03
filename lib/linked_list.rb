class LinkedList
  def initialize
    @list = ["nil"]
  end

  def append(value)
    if @list.length == 1
      @list.prepend(value)
    else
      @list.insert(-2, value)
    end
    puts @list.join(" ")
  end

  def to_s
    puts "What should we add to our Linked List?"
    input = "( #{gets.chomp} ) ->"
    return input
  end

  def prepend(value)
    @list.prepend(value)
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
end
