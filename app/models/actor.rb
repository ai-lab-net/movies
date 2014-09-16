class Actor < ActiveRecord::Base
  has_one  :profile, ->{ where(primary: true)}, class: ActorProfile
  has_many :profiles, class: ActorProfile
  has_one  :name, ->{ where(primary: true)}, class: ActorName
  has_many :names, class: ActorName
  has_and_belongs_to_many :contents
  has_and_belongs_to_many :tags

  def bust_cups
    profiles.map(&:bust_cups)
  end
end
