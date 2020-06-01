require "got/version"

module Got
  class Error < StandardError; end
  # Your code goes here...
end
require_relative './got/cli.rb'
require_relative './got/got.rb'
require_relative './got/api.rb'