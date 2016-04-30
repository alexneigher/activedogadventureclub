class DashboardController < ApplicationController

  def index
    @adventure_groups = AdventureGroup.all
    @clients = Client.all
  end
  
end