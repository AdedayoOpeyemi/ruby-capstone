require_relative '../lib/errors.rb'
require_relative '../lib/indent.rb'

include Indent

file = "../css_test.css"
b = Errors.new(file)
