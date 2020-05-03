class Employee < ApplicationRecord
  validates :name, presence: true
  validates :current_salary, presence: true
  validates_numericality_of :current_salary, greater_than: 0
end
