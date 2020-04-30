require 'colorize'

module Indent
  private

  def bracket_exists(args)
    bracket_lines = []
    args.each_with_index do |x, i|
      if (x.match?(/{/) || x.match?(/}/)) && x.match?(/^ +.*/)
        bracket_lines << "Extra space found at the beginning of line #{i + 1}"
      end
    end
    bracket_lines
  end

  public

  def bracket_message(args)
    message_array = bracket_exists args
    message_array.each do |x|
      puts x.colorize(:light_yellow)
    end
  end
end
