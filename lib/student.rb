class Student < ActiveRecord::Base
  has_many :courses, through: :student_courses
end
