require 'rails_helper'

RSpec.describe "questions/show", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      statement: "Statement",
      text: "MyText",
      answer: "Answer",
      daily_access: 2,
      discipline: create(:discipline)
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Statement/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Answer/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
