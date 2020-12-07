class Question < ApplicationRecord
  belongs_to :discipline
  has_many :question_access
  validates :statement, :text, :answer, presence: true
end
