ChallengeMe::Application.routes.draw do
  root :to => "home#index"
  
  devise_for :users, controllers: { registrations: "registrations"}

  resources :users do
    member do
      get :solutions
      get :challenges
    end
  end

  resources :challenges, :solutions
end