class Actor < ActiveRecord::Base
  has_many :profiles, class: ActorProfile
  has_many :names, class: ActorName
  has_many :actor_has_tags
  has_many :tags, through: :actor_has_tags

  def bust_cups
    profiles.map(&:bust_cups)
  end
end
