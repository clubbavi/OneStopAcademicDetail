class Course < ActiveRecord::Base
  has_one :syllabus

  accepts_nested_attributes_for :syllabus
end
