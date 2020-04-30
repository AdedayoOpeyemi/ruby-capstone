require 'colorize'

module SemiColon
  private

  def semi_colon_space(args)
    missing_semi = []
    args.each_with_index do |x, i|
      if x.match(/:/) && !x.match?(/;+$/) && !x.match?(/}+$/)
        missing_semi << "Missing semi-colon at the end of line #{i + 1}"
      end
    end
    missing_semi
  end

  public

  def semi_colon_message(args)
    message_array = semi_colon_space args
    message_array.each do |x|
      puts x.colorize(:light_green)
    end
  end
end
