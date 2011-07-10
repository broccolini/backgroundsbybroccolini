class CreateBackgroundsTags < ActiveRecord::Migration
  def self.up
    create_table :backgrounds_tags do |t|
      t.belongs_to :background
      t.belongs_to :tag
      t.timestamps
    end

    remove_column :backgrounds_tags, :id
  end

  def self.down
    drop_table :backgrounds_tags
  end
end
