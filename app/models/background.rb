class Background < ActiveRecord::Base
  belongs_to :brand

  validates :name,  :presence => true
  validates :brand, :presence => true
end
