class BeatBox
  attr_accessor :list 
  def initialize
    @list = LinkedList.new
  end

  def append(string_value)
    values = string_value.split #split string into 3 string and put them in an array called values

    values.each do |value| #traverse
      validate_and_add(value, :append) 
      #use validate_and_add method to verify value is part of @list
      end
    
  def prepend(string_value)
    values = string_value.split #split string into 3 string and put them in an array called values
    
    values.reverse_each do |value| 
      #prepend in reverse order to keep original order
      validate_and_add(value, :prepend) 
        #use validate_and_add method to verify value is part of @list
    end
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


  def validate_and_add(value, operation)
    valid_beats = ["tee", "dee", "deep", "bop", "la", "na", "ditt", "doo", "woo", "hoo", "shu", "blop", "shi", "dep"]

    if valid_beats.include?(value)
      case operation 
        #flow control statement to execute on operation parament :append or :prepend
      when :append
        @list.append(value)
      when :prepend
        @list.prepend(value)
      end
    end
  end

  def all
    return @list.to_string
  end

end