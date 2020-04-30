class Errors
  attr_reader :file, :args

  def initialize(file)
    @file = file
    @args = get_file(@file)
  end

  # rubocop: disable Lint/UselessAssignment
  def get_file(file)
    args = File.readlines(file).map(&:chomp)
  end
end
