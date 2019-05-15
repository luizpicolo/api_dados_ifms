Rails.application.routes.draw do
  get '/students', to: 'students#index'
  get '/courses', to: 'courses#index'
end
