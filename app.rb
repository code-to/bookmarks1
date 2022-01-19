require 'sinatra/base'
require_relative 'lib/bookmarks'

class Bookmarks < Sinatra::Base
  
  get '/' do 
    erb :index
  end 

  get '/bookmarks' do
   @bookmarks = Bookmark.all_bookmarks

 
   erb :'bookmarks/index'
  end

  run! if app_file == $0

end

