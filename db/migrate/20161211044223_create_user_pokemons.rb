class CreateUserPokemons < ActiveRecord::Migration
  def change
    create_table :user_pokemons do |t|
      t.references :poke, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
