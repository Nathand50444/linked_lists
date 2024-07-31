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
    puts @list
  end

  def to_s
    puts "What should we add to our Linked List?"
    input = "( #{gets.chomp} ) ->"
    return input # For some reason it won't .append(input)
  end

  def prepend(value)
    @list.prepend(value)
    puts @list
  end

  def size
    puts @list.length
  end
end
