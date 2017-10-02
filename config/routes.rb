Rails.application.routes.draw do

  get 'calendar/index'

  root controller: :laundry_rooms, action: :index
  resources :laundry_rooms, only: [:index] do
    get :create_booking
    get :delete_booking
  end
  devise_for :users

  resources :calendar, only: [:index]

end