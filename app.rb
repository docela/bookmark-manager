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

  get "/bookmarks/new" do
    erb(:new)
  end

  post "/bookmarks" do
    p "Form data has been submitted to the /bookmarks route"
    @create = Bookmark.create(url: params['url'])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
