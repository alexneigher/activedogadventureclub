class CreateAdventureTypes < ActiveRecord::Migration
  def change
    create_table :adventure_types do |t|
      t.string :name
      t.decimal :price_per_day
      t.timestamps null: false
    end
  end
end
