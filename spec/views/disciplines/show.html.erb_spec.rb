require 'rails_helper'

RSpec.describe "disciplines/show", type: :view do
  before(:each) do
    @discipline = assign(:discipline, create(:discipline))
  end

  it "renders attributes in <p>" do
    render
  end
end
