require "got/version"

module Got
  class Error < StandardError; end
  # Your code goes here...
end

require 'bundler/setup'
Bundler.require(:default)

require_relative './got/cli.rb'
require_relative './got/got.rb'
require_relative './got/api.rb'

# require-----loads up files from ruby's gem library
# require_relative-----is a method that takes you from one location to another