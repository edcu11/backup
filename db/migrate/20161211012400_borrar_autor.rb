class BorrarAutor < ActiveRecord::Migration
  def change
    remove_column :reviews, :autor
    add_column :reviews, :user_id, :integer
  end
end
