class Location < ActiveRecord::Base
  belongs_to :employer
  has_many :openings
end
