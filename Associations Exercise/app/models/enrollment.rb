# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  course_id  :integer
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Enrollment < ApplicationRecord
  
    belongs_to :course,
        primary_key: :id, #represents course's id
        foreign_key: :course_id, #what we consider a foreign key
        class_name: :Course 

    belongs_to(:student, {
      primary_key: :id,
      foreign_key: :student_id,
      class_name: :User
    })
end
