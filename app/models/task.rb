class Task < ApplicationRecord
  STATUS = %w(in_process done deleted).freeze
  
  validates :name, :status, presence: true
  validates :status, inclusion: { in: STATUS }
  
  belongs_to :project
end
