class Employer < User
  has_many :locations, dependent: :destroy
  has_many :openings, dependent: :destroy
end
