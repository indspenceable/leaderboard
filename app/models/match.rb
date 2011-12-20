class Match < ActiveRecord::Base
  has_many :participants, :inverse_of => :match
  has_many :players, :through => :participants, :inverse_of => :matchs
end
