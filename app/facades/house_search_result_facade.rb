class HouseSearchResultFacade

  def initialize(house)
    @house = house
  end

  def find_house(house)
    response = Faraday.get("http://westerosapi.herokuapp.com/api/v1/house/#{house}?api_key=#{ENV['API_KEY']}")
  end



end
