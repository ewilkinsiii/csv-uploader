Rails.application.routes.draw do
  resources :employees do 
    collection do
      post :import
    end
  end
  root "pages#home"
end
