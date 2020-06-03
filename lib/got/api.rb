require 'pry'


class Api

  BASE_URL = "https://www.anapioficeandfire.com/api/characters"

  def self.get_got
    res = RestClient.get(BASE_URL)
    binding.pry 
  end





end