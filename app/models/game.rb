class Game < ActiveRecord::Base
  has_many :matches
  
  def titleize
    name.titleize
  end
end
