class Background < ActiveRecord::Base
  has_and_belongs_to_many :tags
  belongs_to :brand

  validates :name,  :presence => true, :uniqueness => true
  validates :brand, :presence => true
end
