FactoryBot.define do
  factory :question do
    statement { "MyString" }
    text { "MyText" }
    answer { "MyString" }
    daily_access { 1 }
    discipline
  end
end
