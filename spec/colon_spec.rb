require_relative '../lib/colon.rb'
require_relative '../lib/errors.rb'

RSpec.describe Colon do

include Colon

  describe '#colon_space_message' do
    it 'adds to an array if there\'s a missing space after a colon' do
      file = './css_test.css'
      linter = Errors.new(file)
      expect do
        p colon_space(linter.args)
      end.to output("[\"Missing space after colon on line 3\"]\n").to_stdout
    end
  end
end
