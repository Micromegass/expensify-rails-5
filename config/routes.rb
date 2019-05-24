Rails.application.routes.draw do
  root "dashboard#index"

  resources :expenses, path: 'expenses' do
    collection do
      get :find_category
    end
  end



end
