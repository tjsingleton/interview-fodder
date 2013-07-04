class FizzBuzz
  def initialize(buffer)
    @buffer = buffer
  end	

  def run
    1.upto(100) do |i|
      multiple_of_3 = i.modulo(3).zero?
      multiple_of_5 = i.modulo(5).zero?    

      @buffer.print 'Fizz' if multiple_of_3
      @buffer.print 'Buzz' if multiple_of_5
      @buffer.print i unless multiple_of_3 || multiple_of_5
      @buffer.print "\n"
    end
  end
end
