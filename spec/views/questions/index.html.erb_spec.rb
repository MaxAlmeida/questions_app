require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:disciplines, build_list(:discipline, 2)
    )
  end

  before(:each) do
    assign(:questions, build_list(:question,2))
  end

  it "renders a list of questions" do
    render
  end
end
