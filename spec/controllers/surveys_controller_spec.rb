require 'rails_helper'

RSpec.describe SurveysController, type: :controller do
   describe "surveys#index action" do
      it "should successfully show the page" do
        get :index
        expect(response).to have_http_status(:success)
      end
   end

     describe "surveys#filter action"
        it "should return a list of movies" do
          movie = FactoryBot.create(:movie)
          post :surveys_filter
          expect(response).to redirect_to surveys_filter
    end
  end
end