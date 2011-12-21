class Player < ActiveRecord::Base
  has_many :participants, :inverse_of => :player
  has_many :matches, :through => :participants, :inverse_of => :players
  
  def wins
    Match.joins(:participants).where(:participants => {:winner => true, :player_id => self.id})
  end
  def losses
    Match.joins(:participants).where(:participants => {:winner => false, :player_id => self.id})
  end
  def titleize
    name.titleize
  end
end
