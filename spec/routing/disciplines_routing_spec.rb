require "rails_helper"

RSpec.describe DisciplinesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/disciplines").to route_to("disciplines#index")
    end

    it "routes to #show" do
      expect(get: "/disciplines/1").to route_to("disciplines#show", id: "1")
    end
  end
end
