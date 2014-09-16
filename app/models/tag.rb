class Tag < ActiveRecord::Base
  has_many :actor_has_tags
  has_many :actors, through: :actor_has_tags
end
