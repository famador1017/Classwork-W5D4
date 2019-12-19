# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
     has_many (:courses,
        through: :enrollments,
        source: :course)
    

     has_many (:course,
        class_name: 'Course',
        foreign_key: :istructor_id,
        primary_key: :id )
    
end
