require 'strscan'
require 'colorize'

module Indent
  def bracket_exists (args)
    bracket_lines = []
    args.each_with_index { |x, i|
      x.reset
      if (x.exist?(/{/) || x.exist?(/}/)) && x.match?(/^ +.*/)
        bracket_lines << "Extra space found at the beginning of line #{i + 1}"
      end
    }
    bracket_lines
  end

  def bracket_message (args)
    message_array = bracket_exists (args)
    message_array.each_with_index { |x|
      puts x
    }
  end
end

