require 'strscan'
require 'colorize'

module Indent
  def bracket_exists (args)
    bracket_lines = []
    args.each_with_index { |x, i|
      x.reset
      if x.exist?(Regexp.new("{")) && x.match?(Regexp.new("^ +.*"))
        bracket_lines << "Extra space found on line #{i + 1}"
      elsif x.exist?(Regexp.new("}")) && x.match?(Regexp.new("^ +.*"))
        bracket_lines << "Extra space found on line #{i + 1}"
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

