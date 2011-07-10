class Brand < ActiveRecord::Base
  has_many :backgrounds

  validates :name, :presence => true
  validates :url,  :presence => { :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix }
end
