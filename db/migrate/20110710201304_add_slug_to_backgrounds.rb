class AddSlugToBackgrounds < ActiveRecord::Migration
  def self.up
    add_column :backgrounds, :slug, :string
  end

  def self.down
    remove_column :backgrounds, :slug
  end
end
