require 'colorize'

module Space
  def body_content(args)
    body_lines = []
    args.each_with_index do |x, i|
      if x.match?(/:/) && !x.match?(/^ +.*/) && (!x.match?(/}/) || !x.match?(/{/))
        body_lines << "Add space at the beginning of line #{i + 1}"
      end
    end
    body_lines
  end

  def body_message(args)
    message_array = body_content args
    message_array.each do |x|
      puts x.colorize(:light_blue)
    end
  end
end
