require "rails_helper"

RSpec.describe Api::V1::TasksController, type: :controller do
  describe "GET #index" do
    it "should return the list of tasks with all capital letters and their ids" do
      task = Task.create(name: "Take over the world")
      get :index

      expect(json["tasks"][0]["capitalized_name"]).to eq "TAKE OVER THE WORLD"
      expect(json["tasks"][0]["id"]).to eq task.id
    end
  end
end
