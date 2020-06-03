require 'pry'


class Api

  BASE_URL = "https://www.anapioficeandfire.com/api/characters"

  def self.get_got
    res = RestClient.get(BASE_URL)
    data = JSON.parse(res.body)
    data['results'].each do |got|
      name = got["name"]
      id = got["url"].split("/")[-1]
      Got.new(name, id)
    end
  end
end