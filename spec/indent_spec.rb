require_relative '../lib/indent.rb'
require_relative '../lib/errors.rb'

RSpec.describe Indent do
  include Indent

  describe '#bracket_message' do
    it 'outputs an error message when there\'s an extra space in the beginning of a line' do
      file = './css_test.css'
      linter = Errors.new(file)
      expect do
        bracket_message(linter.args)
      end.to output("\e[0;93;49mExtra space found at the beginning of line 7\e[0m\n").to_stdout
    end
  end
end
