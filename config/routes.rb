Rails.application.routes.draw do
  devise_for :users, only: :registrations, controllers: { registrations: 'registrations' }, defaults: { format: :json }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
