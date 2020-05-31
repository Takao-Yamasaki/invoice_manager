Rails.application.routes.draw do
  resources :items
  resources :clients
  resources :pdfs,only: :index do
    collection do
      get :output
    end
  end
end
