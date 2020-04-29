require 'colorize'

module Colon
  def colon_space (args)
    no_empty = []
    args.each_with_index { |x, i|
      if x.match?(/:/) && !x.match?(/:+\s/)
        no_empty << "Missing space after colon on line #{i+1}"
      end
    }
    no_empty
  end

  def colon_space_message (args)
    message_array = colon_space (args)
    message_array.each_with_index { |x|
      puts x.colorize(:light_red)
    }
  end
end

