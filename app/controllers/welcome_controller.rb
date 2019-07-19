class WelcomeController < ApplicationController
  def index
    render locals: {
      facade: HouseSearchResultFacade.new(params[:q])
    }
  end
end
