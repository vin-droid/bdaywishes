Rails.application.routes.draw do
  devise_for :users, controllers: {
omniauth_callbacks: 'omniauth_callbacks'
}

root 'bday_wishes#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
