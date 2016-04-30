class AdventureGroupsController < ApplicationController

  def new
    @adventure_group = AdventureGroup.new(adventure_date: Time.now)
  end

  def create
    @adventure_group = AdventureGroup.create(adventure_group_params)
  end


  private
    def adventure_group_params
      params.require(:adventure_group).permit(:pack_leader_id, :adventure_date, :adventure_type_id)
    end

end