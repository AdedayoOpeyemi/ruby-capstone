class Errors
  attr_reader :file, :args

  def initialize (file)
    @file = file
    @args = get_file(@file)
  end

  def get_file (file)
    args = File.readlines(file).map(&:chomp)
    line = args.map { |x| x = StringScanner.new(x) }
  end
end