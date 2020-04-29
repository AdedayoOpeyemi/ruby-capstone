require 'strscan'
require 'colorize'

module Space
  def body_content (args)
    body_lines = []
    args.each_with_index { |x, i|
      x.reset
      if x.exist?(/:/) && !x.match?(/^ +.*/) && (!x.exist?(/}/)||!x.exist?(/{/))
        body_lines << "Add space at the beginning of line #{i + 1}"
      end
    }
    body_lines
  end

  def body_message (args)
    message_array = body_content (args)
    message_array.each_with_index { |x|
      puts x
    }
  end
end

