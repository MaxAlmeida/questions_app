class Question < ApplicationRecord
  belongs_to :discipline
  has_many :question_access
  validates :statement, :text, :answer, presence: true

  counter_culture :discipline , column_name: 'questions_daily_access', delta_column: 'daily_access'
end
