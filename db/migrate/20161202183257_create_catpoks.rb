class CreateCatpoks < ActiveRecord::Migration
  def change
    create_table :catpoks do |t|
      t.references :poke, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
