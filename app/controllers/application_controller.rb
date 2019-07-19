class ApplicationController < ActionController::Base
  def houses
    [
      ['Stark', 'stark'],
      ['Lannister', 'lannister'],
      ['Targaryen', 'targaryen'],
      ['Tyrell', 'tyrell'],
      ['Greyjoy', 'greyjoy']
    ]
  end
end
