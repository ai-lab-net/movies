class ActorProfile < ActiveRecord::Base
  enum gender: { female:0, male: 1 }
  belongs_to :actor
  belongs_to :bust_cup
end
