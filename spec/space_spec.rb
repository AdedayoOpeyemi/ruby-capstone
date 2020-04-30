require_relative '../lib/space.rb'
require_relative '../lib/errors.rb'

RSpec.describe Space do

include Space

  describe '#body_message' do
    it 'outputs an error message when there\'s a space missing at the end of a body line' do
      file = './css_test.css'
      linter = Errors.new(file)
      expect do
        body_message(linter.args)
      end.to output("\e[0;94;49mAdd space at the beginning of line 10\e[0m\n").to_stdout
    end
  end
end
