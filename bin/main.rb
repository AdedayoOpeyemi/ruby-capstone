require_relative '../lib/errors.rb'
require_relative '../lib/indent.rb'

include Indent
include Space

file = "../css_test.css"
b = Errors.new(file)

bracket_message(b.args)
