require 'rails_helper'

RSpec.describe Question, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:statement) }
    it { is_expected.to validate_presence_of(:text) }
    it { is_expected.to validate_presence_of(:answer) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:discipline) }
  end
end
