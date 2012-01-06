class Game < ActiveRecord::Base
  has_many :matches
  has_many :game_aliases
  
  def name
    game_aliases.where(primary: true).first.name
  end
  def self.find_by_name name
    GameAlias.find_by_name(name).tap do |a|
      return a.game if a
    end
  end
  
  def titleize
    name.titleize
  end
end
