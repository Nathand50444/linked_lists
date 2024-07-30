class LinkedList
  def initialize
    @list = ["nil"]
    to_s
  end

  def append(value)
    if @list.length == 1
      @list.prepend(value)
    else
      @list.insert(-2, value)
    end
    puts @list
    to_s
  end

  def to_s
    puts "What should we add to our Linked List?"
    input = "( #{gets.chomp} ) ->"
    append(input)
  end
end
