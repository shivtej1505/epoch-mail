Rails.application.routes.draw do
  root "box#index"
  get "b/:slug" => "box#show"
end
