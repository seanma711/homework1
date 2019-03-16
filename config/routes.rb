Rails.application.routes.draw do
  get '/calculator/:x/:a/to/:b', to: 'calculator#convert'
end
