Rails.application.routes.draw do
	root 'attendees#index'
  resources :attendees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
