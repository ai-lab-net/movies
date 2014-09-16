class ActorProfile < ActiveRecord::Base
  belongs_to :actor
  belongs_to :bust_cup
end
