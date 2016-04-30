class AddAdventureTypeToAdventureGroup < ActiveRecord::Migration
  def change
    add_reference :adventure_groups, :adventure_type
  end
end
