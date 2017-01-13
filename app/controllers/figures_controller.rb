class FiguresController < ApplicationController

  get '/figures' do
    erb :'/figures/index'
  end

  get '/figures/new' do
    erb :'/figures/new'
  end
  #
  # get '/figures/show' do
  #   erb :'/figures/show'
  # end
  #
  # get '/figures/:name/edit' do
  #   erb :'/figures/edit'
  # end

  post '/figures' do
    @figure = Figure.create(name: params[:figure])
    @figure.save
  end
end
