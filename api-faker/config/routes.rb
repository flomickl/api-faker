Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      get 'geolife/all/', to: 'geolife#all'
      get 'geolife/latest/', to: 'geolife#latest'

      get 'animal/all/', to: 'animal#all'
      get 'animal/latest/', to: 'animal#latest'
    end
  end
end
