class DropTables < ActiveRecord::Migration
  def change
    drop_table :categories_pokes
  end
end
