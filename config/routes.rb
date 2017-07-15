Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope 'v1', defaults: { format: 'json' } do
    devise_for :users, only: :registrations, controllers: { registrations: 'registrations' }, defaults: { format: :json }
  end
end
