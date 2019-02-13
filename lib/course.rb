class Course < ActiveRecord::Base
  has_many :students, through: :student_courses
end
