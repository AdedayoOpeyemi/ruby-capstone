require_relative '../lib/semi_colon.rb'
require_relative '../lib/errors.rb'

RSpec.describe SemiColon do
  include SemiColon

  describe '#semi_colon_message' do
    it 'outputs an error message when there\'s an semi-colon missing at the end of a line' do
      file = './css_test.css'
      linter = Errors.new(file)
      expect do
        semi_colon_message(linter.args)
      end.to output("\e[0;92;49mMissing semi-colon at the end of line 5\e[0m\n").to_stdout
    end
  end
end
