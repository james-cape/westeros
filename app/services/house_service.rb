class HouseService

  def get_results(house)
    get_json("#{house}?api_key=#{ENV['API_KEY']}")
  end

  private

     def get_json(url)
        response = conn.get(url)
        JSON.parse(response.body, symbolize_names: true)
     end


      def conn
        Faraday.new("http://westerosapi.herokuapp.com/api/v1/house/") do |f|
          f.params["api_key"] = ENV["API_KEY"]
          f.adapter Faraday.default_adapter
        end
      end

end
