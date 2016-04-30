class CreatePackLeaders < ActiveRecord::Migration
  def change
    create_table :pack_leaders do |t|
      t.string :name
      t.string :phone

      t.timestamps null: false
    end
  end
end
