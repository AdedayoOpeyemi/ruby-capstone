require 'strscan'
require 'colorize'

module Indent
  def bracket_exists (args)
    bracket_lines = []
    args.each { |x|
      x.reset
      if x.exist?(Regexp.new("{"))
        bracket_lines << x
      elsif x.exist?(Regexp.new("}"))
        bracket_lines << x
      end
    }
    bracket_lines
  end

  def bracket_space (args)
    bracket_space_errors = bracket_exists (args)
    space_array = []
    bracket_space_errors.each { |x|
      x.reset
      if x.match?(Regexp.new("^ +.*"))
        space_array << x
      end
    }
    space_array
  end

  def bracket_message (args)
    message_array = bracket_space (args)
    message_array.each { |x|
      puts "Extra space found on #{x}"
    }
  end
end

