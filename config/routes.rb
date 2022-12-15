Rails.application.routes.draw do

  resources :employees
  resources :documents

  root 'home#index'
  get 'about' => 'pages#about_us'
  get 'contact' => 'pages#contact_us'
  get 'privacy-policy' => 'pages#privacy_policy'
  get 'terms-and-conditions' => 'pages#terms_and_conditions'
  
  #get 'home/index'
end
