class CreateRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :regions do |t|
      t.column(:name, :string)
      t.column(:animal_id, :integer)
      
      t.timestamps
    end
  end
end
