class HouseSearchResultFacade

  def initialize(house)
    @house = house
  end

  def house_members
    response = Faraday.get("http://westerosapi.herokuapp.com/api/v1/house/#{@house}?api_key=#{ENV['API_KEY']}")

    members = JSON.parse(response.body, symbolize_names: true)[:data][0][:attributes][:members]

    members.map do |member|
      HouseMember.new(member)
    end
  end



end
