Rails.application.routes.draw do
  root 'surveys#index'

  post 'surveys' => 'survey#filter'
end
