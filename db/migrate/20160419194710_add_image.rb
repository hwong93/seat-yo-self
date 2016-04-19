class AddImage < ActiveRecord::Migration
  def change
    add_column :restaurants, :image, :string
    add_column :restaurants, :map, :string
  end
end
