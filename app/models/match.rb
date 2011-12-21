class Match < ActiveRecord::Base
  attr_accessor :winner_names, :loser_names, :game_name
  
  has_many :participants, :inverse_of => :match
  has_many :players, :through => :participants, :inverse_of => :matches
  validate :game, :presence => true
  
  def winners
    Player.joins(:participants).where(:participants => {:winner => true, :match_id => self.id})
  end
  def losers
    Player.joins(:participants).where(:participants => {:winner => false, :match_id => self.id})
  end
  before_save do
    game_name.downcase!
    game = Game.find_or_create_by_name(game_name)
  end
  after_create do
    winners_text.split.map(&:downcase).each do |winner|
      Participant.create(:player => Player.find_or_create_by_name(winner), :match => self, :winner => true)
    end
    losers_text.split.map(&:downcase).each do |loser|
      Participant.create(:player => Player.find_or_create_by_name(loser), :match => self, :winner => false)
    end
  end
  
end
