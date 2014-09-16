class Tag < ActiveRecord::Base
  has_and_belongs_to_many :actors
  has_and_belongs_to_many :contents
  has_and_belongs_to_many :series
end
