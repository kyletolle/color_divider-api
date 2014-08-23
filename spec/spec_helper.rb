# Idea from http://recipes.sinatrarb.com/p/testing/rspec
require 'rack/test'

require 'color_divider/api'

ENV['RACK_ENV'] = 'test'

module RSpecMixin
  include Rack::Test::Methods
  def app() described_class end
end

RSpec.configure { |c| c.include RSpecMixin }

