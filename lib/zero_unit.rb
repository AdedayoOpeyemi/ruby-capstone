require 'colorize'

module ZeroUnit
  private

  def zero_found(args)
    zero_array = []
    args.each_with_index do |x, i|
      zero_array << "Zero unit on line #{i + 1}" if x.match?(/0{1}+\w/)
    end
    zero_array
  end

  public

  def zero_unit_message(args)
    message_array = zero_found args
    message_array.each do |x|
      puts x.colorize(:light_magenta)
    end
  end
end
