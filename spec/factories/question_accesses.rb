FactoryBot.define do
  factory :question_access do
    date { "2020-12-07 13:34:04" }
    times_accessed { 1 }
    question { nil }
  end
end
