class AddBrandIdToBackgrounds < ActiveRecord::Migration
  def self.up
    add_column :backgrounds, :brand_id, :integer
  end

  def self.down
    remove_column :backgrounds, :brand_id
  end
end