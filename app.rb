require 'sinatra'
require 'sinatra/activerecord'

class Video < ActiveRecord::Base
end

class Ninjago < Sinatra::Base
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
