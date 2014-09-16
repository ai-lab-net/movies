class Series < ActiveRecord::Base
  has_many :contents
  has_and_belongs_to_many :tags
end
