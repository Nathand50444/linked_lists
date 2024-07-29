class LinkedList
  def initialize
    @list = [nil]
    to_s
  end

  def append(value)
    @list.append(value)
  end

  def to_s
    puts "What should we add to our Linked List?"
    input = "( #{gets} ) ->"
    append(input)
  end
end
