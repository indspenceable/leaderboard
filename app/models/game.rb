class Game < ActiveRecord::Base
  has_many :matches
  
  scope :active, joins(:matches)
  
  def titleize
    name.titleize
  end
end
