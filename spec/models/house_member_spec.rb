require "rails_helper"

RSpec.describe HouseMember do
  it "has attributes" do
    attributes =  {
      name: "Martin",
      id: 10
    }

    house_member = HouseMember.new(attributes)

    expect(house_member.name).to eq(attributes[:name])
    expect(house_member.id).to eq(attributes[:id])
  end

  it "has different attributes" do
    attributes =  {
      name: "Sam",
      id: 25
    }

    house_member = HouseMember.new(attributes)

    expect(house_member.name).to eq(attributes[:name])
    expect(house_member.id).to eq(attributes[:id])
  end
end
