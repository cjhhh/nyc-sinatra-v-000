class FiguresController < ApplicationController

  get '/figures' do
    erb :'/figures/index'
  end

  get '/figures/new' do
    erb :'/figures/new'
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :'/figures/show'
  end

  # get '/figures/:name/edit' do
  #   erb :'/figures/edit'
  # end

  post '/figures' do
    @figure = Figure.create(params["figure"])

    if !params[:landmark][:name].empty?
      @figure.landmarks << Landmark.create(params[:landmark])
    end
    if !params[:title][:name].empty?
      @figure.titles << Title.create(params[:title])
    end
    @figure.save
  end

end
