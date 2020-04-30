require_relative '../lib/zero_unit.rb'
require_relative '../lib/errors.rb'

RSpec.describe ZeroUnit do

include ZeroUnit

  describe '#zero_unit_message' do
    it 'outputs an error message when there\'s a space missing at the end of a body line' do
      file = './css_test.css'
      linter = Errors.new(file)
      expect do
        zero_unit_message(linter.args)
      end.to output("\e[0;95;49mZero unit on line 10\e[0m\n").to_stdout
    end
  end
end
