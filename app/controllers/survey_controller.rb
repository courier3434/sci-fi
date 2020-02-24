class SurveyController < ApplicationController

   def new
    @survey = Survey.new
   end


def filter
      
      params = survey_params
      params.category

      if params.question == 'your answer'
        @movies = Movie.findAll(category: params.category)

        render :some_view
      end
  end

  private

  def survey_params
    params.permit(:name, :category)
  end
end
