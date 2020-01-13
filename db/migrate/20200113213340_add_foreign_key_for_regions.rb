class AddForeignKeyForRegions < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :regions, :animals
  end
end
