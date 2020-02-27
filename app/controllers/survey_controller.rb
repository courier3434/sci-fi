class SurveyController < ApplicationController



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

      categories = survey_params
      book_options = []
      categories.shift

      Book.all.each do |b|
        categories.each do |category|

          if b.category.include?('action') && book_options.length < 30
            book_options.push(b)
        end
      end

      categories = survey_params
      game_options = []
      categories.shift

      Game.all.each do |g|
        categories.each do |category|

          if g.category.include?('action') && game_options.length < 30
            game_options.push(g)
        end
      end
    
      categories = survey_params
      show_options = []
      categories.shift

      Show.all.each do |s|
        categories.each do |category|

          if s.category.include?('action') && show_options.length < 30
            show_options.push(s)
        end
      end
  end

  
@movies = movie_options.uniq
  if params.question == 'your answer'
          @movies = Movie.findAll(category: params.category)
          render :some_view
  end
end
    
@books = book_options.uniq
  if params.question == 'your answer'
          @books = Book.findAll(category: params.category)
          render :some_view
  end
end
    
@games = game_options.uniq
  if params.question == 'your answer'
          @games = Game.findAll(category: params.category)
          render :some_view
  end
end
    
@shows = show_options.uniq
    if params.question == 'your answer'
          @shows = Show.findAll(category: params.category)
          render :some_view
    end
end

  private

    def survey_params
      params[:some_symbol][:categories]
      # params.require(:some_symbol).permit(:categories)
    end
  end