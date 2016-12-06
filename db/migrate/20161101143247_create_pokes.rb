class CreatePokes < ActiveRecord::Migration
  def change
    create_table :pokes do |t|
      t.text :name
      t.integer :attack
      t.integer :defense
      t.text :avatar_url

      t.timestamps
    end
  end
end
