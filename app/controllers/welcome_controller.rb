class WelcomeController < ApplicationController
  def index
    @facade = ExcuseFacade.new(params)
  end
end