Rails.application.routes.draw do
  root 'surveys#index'

  post 'surveys' => 'surveys#filter'
end
