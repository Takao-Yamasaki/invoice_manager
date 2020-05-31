Rails.application.routes.draw do
  resources :pdfs,only: :index do
    collection do
      get :output
    end
  end
end
