class SurveyController < ApplicationController

   def new
    @survey = Survey.new
   end


def filter
      categories = survey_params
      movie_options = []
      categories.shift
      
      Movie.all.each do |m|
        categories.each do |category| 

          if m.category.include?('action') && movie_options.length < 30
            movie_options.push(m)
          end
        end
      end
      @movies = movie_options.uniq
      

  if params.question == 'your answer'
        @movies = Movie.findAll(category: params.category)
        render :some_view
    end
  end

  private

  def survey_params
    params[:some_symbol][:categories]
    # params.require(:some_symbol).permit(:categories)
  end
end
