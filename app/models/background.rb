class Background < ActiveRecord::Base
  belongs_to :brand

  validates :name,  :presence => true, :uniqueness => true
  validates :brand, :presence => true
end
