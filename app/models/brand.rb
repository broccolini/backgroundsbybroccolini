class Brand < ActiveRecord::Base
  has_many :backgrounds, :dependent => :destroy

  validates :name, :presence => true, :uniqueness => true
  validates :url,  :presence => { :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix }
end
