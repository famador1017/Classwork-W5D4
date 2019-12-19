# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string
#  prereq_id     :integer
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Course < ApplicationRecord

     belongs_to (:prereq,
        class_name : 'Course',
        primary_key: :id,
        foreign_key: :prereq_id,
        optional: true)

     belongs_to (:instructor,
        class_name: 'User',
        primary_key: :id,
        foreign_key: :instructor_id
    )
      has_many (:enrolled_students,
        through: :enrollments,
        source: :user)

     has_one (:instructor,
        class_name: 'User',
        primary_key: :id, 
        foreign_key: :instructor_id)

    

end


#   has_many :patients, through: :appointments, source: :patient
# end