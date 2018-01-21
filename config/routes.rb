Rails.application.routes.draw do
  root to: 'visitors#index'
  post '/', to: 'visitors#city'
end
