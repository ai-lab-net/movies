class Content < ActiveRecord::Base
  belongs_to :series
  belongs_to :publisher
  belongs_to :distributor
  has_and_belongs_to_many :actors
  has_and_belongs_to_many :directors
  has_and_belongs_to_many :tags
end
