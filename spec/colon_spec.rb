require_relative '../lib/colon.rb'
require_relative '../lib/errors.rb'

RSpec.describe Colon do
  include Colon

  describe '#colon_space_message' do
    it 'outputs an error message when there\'s a missing space in front of a colon' do
      file = './css_test.css'
      linter = Errors.new(file)
      expect do
        colon_space_message(linter.args)
      end.to output("\e[0;91;49mMissing space after colon on line 3\e[0m\n").to_stdout
    end
  end
end
