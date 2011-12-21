class Participant < ActiveRecord::Base
  belongs_to :match
  belongs_to :player
  
  validate :match, :presence => true
  validate :player, :presence => true
  validate :winner, :presence => true
end
