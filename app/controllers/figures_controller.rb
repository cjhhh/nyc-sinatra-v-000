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
    @figure = Figure.create(name: params["figure"]["name"])

    if !figure[:landmark][:name].empty?
      @figure.landmarks << Landmark.create(name: params[:landmark])
    end
    if !figure[:title][:name].empty?
      @figure.titles << Title.create(name: params[:title])
    end
    @figure.save
  end

end
