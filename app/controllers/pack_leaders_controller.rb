class PackLeadersController < ApplicationController

  def index
    @pack_leaders = PackLeader.all
  end

end