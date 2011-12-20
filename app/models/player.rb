class Player < ActiveRecord::Base
  has_many :participants, :inverse_of => :player
  has_many :matches, :through => :participants, :inverse_of => :players
  
  def wins
    matches.joins(:participants)
    .where(:participants => {:winner => true})
  end
  def losses
    matches.joins(:participants)
    .where(:participants => {:winner => false})
  end
end
