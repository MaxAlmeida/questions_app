class Question < ApplicationRecord
  belongs_to :discipline

  validates :statement, :text, :answer, presence: true
end
