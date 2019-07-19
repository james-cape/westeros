require "rails_helper"

RSpec.describe "it shows house members " do


  it "displays the house members" do
    # As a user
    # When I visit "/"
    # visit '/'
    #
    # # And I select "Greyjoy" from the dropdown
    # find('#dropdown-list', :text => 'Greyjoy').click
    #
    # # And I click on "Get Members"
    # click_on 'Get Members'

    # skipping ahead
    visit '/search?house=greyjoy'

    # Then my path should be "/search" with "house=greyjoy" in the parameters
    expect(page).to have_current_path(search_path(house: 'greyjoy'))

    # And I should see a message "7 Members"
    expect(page).to have_content('7 Members')

    # # And I should see a list of the 7 members of House Greyjoy
    within '#members' do
      expect(page).to have_css('#member-1')
      expect(page).to have_css('#member-7')
      expect(page).to_not have_css('#member-8')

      # And I should see a name and id for each member.
      within '#member-1' do
        expect(page).to have_content('Name: Balon Greyjoy')
        expect(page).to have_content('ID: 38')
      end
    end

  end

end
