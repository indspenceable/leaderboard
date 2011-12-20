class Participant < ActiveRecord::Base
  belongs_to :match, :inverse_of => :participant
  belongs_to :player, :inverse_of => :participant
end
