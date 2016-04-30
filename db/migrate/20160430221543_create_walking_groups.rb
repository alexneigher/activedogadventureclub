class CreateWalkingGroups < ActiveRecord::Migration
  def change
    create_table :adventure_groups do |t|
      t.datetime :adventure_date
      t.references :pack_leader, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
