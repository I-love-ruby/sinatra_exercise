class School < ActiveRecord::Base

   has_many :students
  validates :name, presence: true
  validates :location, presence: true


end
