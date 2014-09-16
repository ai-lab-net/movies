class Actor < ActiveRecord::Base
  has_one  :profile, ->{ where(primary: true)}, class: ActorProfile
  has_many :profiles, class: ActorProfile
  has_one  :name, ->{ where(primary: true)}, class: ActorName
  has_many :names, class: ActorName
  has_many :actor_has_tags
  has_many :tags, through: :actor_has_tags

  def bust_cups
    profiles.map(&:bust_cups)
  end
end
