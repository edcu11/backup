class CreateCategoriesPokes < ActiveRecord::Migration
  def change
    create_table :categories_pokes do |t|
      t.references :Poke, index: true
      t.references :Category, index: true

      t.timestamps
    end
  end
end
