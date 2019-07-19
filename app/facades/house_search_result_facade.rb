class HouseSearchResultFacade

  def initialize(house)
    @house = house
  end

  def house_members
    service = HouseService.new

    members = service.get_results(@house)[:data][0][:attributes][:members]

    members.map do |member|
      HouseMember.new(member)
    end
  end
end
