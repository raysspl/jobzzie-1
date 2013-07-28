class Opening < ActiveRecord::Base
  belongs_to :employer
  belongs_to :location
  has_and_belongs_to_many :categories
end
