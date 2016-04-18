class AddImageToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :image, :image_tag
  end
end
