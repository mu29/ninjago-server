#encoding: utf-8

require 'sinatra'
require 'sinatra/activerecord'

class Video < ActiveRecord::Base
end

class Ninjago < Sinatra::Base
  configure :production, :development do
    set :bind, '0.0.0.0'
    set :port, 9293
    enable :logging
  end

  before do
    content_type :json
  end

  get '/' do
    p 'Hello!'
  end

  get '/videos' do
    @videos = Video.all
    @videos.to_json
  end

  get '/videos/:id' do
    @video = Video.find(params[:id])
    @video.to_json
  end
end
