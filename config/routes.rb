Rails.application.routes.draw do
  resources :employees do 
    collection do
      post :import
    end
  end

  delete :clear_employees, to: "employees#clear"
  root "pages#home"
end
