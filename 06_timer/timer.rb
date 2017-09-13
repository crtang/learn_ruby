class Timer
  #write your code here
  attr_writer :seconds, :time_string

  def seconds
  	@seconds = 0
  end

  def time_string
  	hours = @seconds / (60 * 60)
  	minutes = (@seconds % (60 * 60)) / 60
  	seconds = (@seconds % (60 * 60)) % 60
  	t = Time.new(2000, 1, 1, hours, minutes, seconds)
  	@time_string = t.strftime("%H:%M:%S")
  	@time_string
  end

end
