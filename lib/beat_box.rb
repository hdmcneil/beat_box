class BeatBox
  attr_accessor :list 
  def initialize
    @list = LinkedList.new

  end

  def append(string_value)
    values = string_value.split #split string into 3 string and put them in an array called values

    values.each do |value| #iterate
      @list.append(value) 
      #use append method from LinkedList class to add to the linked list @list
      end
    

  def count
    @list.count 
     #access count method from LinkedList class to count the linked list instance @list
  end
    count
  end

  def to_string
    @list.to_string
  end

  def play
    beats = @list.to_string
    `say -r 500 -v Boing #{beats}`
  end



end