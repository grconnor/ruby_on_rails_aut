Rails.application.routes.draw do
  root controller:  :articles, action:  :index
  resource :articles, only: [·index, :show]
end
