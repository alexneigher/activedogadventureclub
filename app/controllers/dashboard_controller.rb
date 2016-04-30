class DashboardController < ApplicationController

  def index
    @adventure_groups = AdventureGroup.all
  end
  
end