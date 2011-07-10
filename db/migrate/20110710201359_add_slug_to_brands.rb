class AddSlugToBrands < ActiveRecord::Migration
  def self.up
    add_column :brands, :slug, :string
  end

  def self.down
    remove_column :brands, :slug
  end
end
