class PackLeadersController < ApplicationController

  def index
    @pack_leaders = PackLeader.all
  end

  def new
    @pack_leader = PackLeader.new
  end

  def create
    @pack_leader = PackLeader.create(pack_leader_params)
    redirect_to pack_leaders_path
  end

  def edit
    @pack_leader = PackLeader.find(params[:id])
  end

  def update
    @pack_leader = PackLeader.find(params[:id])
    @pack_leader.update(pack_leader_params)
    redirect_to pack_leaders_path
  end


  private
    def pack_leader_params
      params.require(:pack_leader).permit(:name, :phone)
    end
end