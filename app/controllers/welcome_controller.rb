class WelcomeController < ApplicationController
  def index
    @houses = houses
  end
end
