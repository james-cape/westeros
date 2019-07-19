require "rails_helper"

RSpec.describe HouseService do
  it "gets results" do
    service = HouseService.new

    result = service.get_results("stark")
    expect(result[:data][0][:attributes][:members].first).to have_key(:name)
    expect(result[:data][0][:attributes][:members].first).to have_key(:id)
  end
end
