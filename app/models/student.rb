class Student < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :school
  validates  :name, presence: true
  validates  :email, presence: true


end
