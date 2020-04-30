require 'colorize'

module Colon
  def colon_space(args)
    no_empty = []
    args.each_with_index do |x, i|
      no_empty << "Missing space after colon on line #{i + 1}" if x.match?(/:/) && !x.match?(/:+\s/)
    end
    no_empty
  end

  def colon_space_message(args)
    message_array = colon_space args
    message_array.each do |x|
      puts x.colorize(:light_red)
    end
  end
end
