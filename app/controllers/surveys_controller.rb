class SurveysController < ApplicationController
   
      # @games = Game.findAll(category: params.category)
      # @shows = Show.findAll(category: params.category)
      # @movies = Movie.findAll(category: params.category)



  def filter

      categories = survey_params
      movie_options = []
      categories.shift
      
      #filtering movies
      Movie.all.each do |m|
        categories.each do |category|

             if m.category.include?(category) #&& movie_options.length < 40
              movie_options.push(m)
            end
        end
      end
  
      @movies = movie_options.uniq

      #filtering books
      book_options = []

      Book.all.each do |b|
        categories.each do |category|

          if b.category.include?(category) #&& book_options.length < 40
            book_options.push(b)
          end
        end
      end
      @books = book_options.uniq


     #Filtering games
      game_options = []

      Game.all.each do |g|
        categories.each do |category|

          if g.category.include?(category) #&& game_options.length < 40
            game_options.push(g)
          end
        end
      end
      @games = game_options.uniq

      #filtering shows
      show_options = []

      Show.all.each do |s|
        categories.each do |category|

          if s.category.include?(category) #&& show_options.length < 40
            show_options.push(s)
          end
        end
      end
      @shows = show_options.uniq

    render :template => "surveys/show"
  end

  

  private
    def survey_params
      params[:some_symbol][:categories]
      # params.require(:some_symbol).permit(:categories)
    end
end