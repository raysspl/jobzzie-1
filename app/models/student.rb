class Student < User
  has_many :jobs, dependent: :destroy
  has_many :studies, dependent: :destroy
end
