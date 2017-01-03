Rails.application.routes.draw do
  namespace :newsletters do
    get 'preview'
  end
  resources :newsletters
end
