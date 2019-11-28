require "sinatra/base"
require './lib/bookmark'

class Bookmarks < Sinatra::Base
  enable :sessions

  get "/" do
    erb(:index)
  end

  get "/bookmarks" do
    # p ENV

    @bookmark_list = Bookmark.all
    erb(:marks)
  end

  run! if app_file == $0
end
