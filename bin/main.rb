require_relative '../lib/errors.rb'
require_relative '../lib/indent.rb'
require_relative '../lib/space.rb'
require_relative '../lib/colon.rb'
require_relative '../lib/semi_colon.rb'
require_relative '../lib/zero_unit.rb'

include Indent
include Space
include Colon
include SemiColon
include ZeroUnit

file = "../css_test.css"
b = Errors.new(file)

bracket_message(b.args)
body_message(b.args)
colon_space_message(b.args)
semi_colon_message(b.args)
zero_unit_message(b.args)
