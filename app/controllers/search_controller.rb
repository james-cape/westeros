class SearchController < ApplicationController
  def index
    render locals: {
      facade: HouseSearchResultFacade.new(params[:house])
    }
  end
end
