require 'colorize'

module ZeroUnit
  def zero_found (args)
    zero_array = []
    args.each_with_index { |x, i|
      if x.match?(/0{1}+\w/)
        zero_array << "Zero unit on line #{i+1}"
      end
    }
    zero_array
  end

  def zero_unit_message (args)
    message_array = zero_found (args)
    message_array.each_with_index { |x|
      puts x.colorize(:light_magenta)
    }
  end
end