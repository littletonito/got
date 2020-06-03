require 'pry'


class Api

  BASE_URL = "https://www.anapioficeandfire.com/api/characters"

  def self.get_got
    res = RestClient.get(BASE_URL)
    data = JSON.parse(res.body)
    data['results'].each do |got|
      puts got["name"]
      puts got["url"]
    end
  end
end