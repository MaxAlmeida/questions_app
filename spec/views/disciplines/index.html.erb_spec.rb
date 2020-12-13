require 'rails_helper'

RSpec.describe "disciplines/index", type: :view do
  before(:each) do
    assign(:disciplines, build_list(:discipline, 2)
    )
  end

  it "renders a list of disciplines" do
    render
  end
end
