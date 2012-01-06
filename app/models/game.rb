class Game < ActiveRecord::Base
  has_many :matches
  has_many :game_aliases
  
  def name
    game_aliases.where(primary: true).first.name
  end
  
  def titleize
    name.titleize
  end
end
