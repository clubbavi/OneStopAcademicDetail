class Syllabus < ActiveRecord::Base
  has_many :chapters
  belongs_to :course
end
