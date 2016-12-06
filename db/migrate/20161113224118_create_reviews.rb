class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :autor
      t.text :descripcion
      t.integer :rev
      t.integer :poke_id

      t.timestamps
    end
  end
end
