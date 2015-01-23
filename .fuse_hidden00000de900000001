#encoding: utf-8
require 'sinatra'
require 'sinatra/reloader'
require 'pp'
# SL9. Spotinatra Premium
# Now we will add some features to our awesome and shiny Spotinatra web app (exercise SL6, if you remember from today):
# * Instead of adding a song through "curl", we will create a form in the "/" route that allows us to create new song.
# * Instead of just printing the songs as a string, we will use an ERB template to do that, using the HTML <ul> and <li> elements.
# * Instead of just printing “ENOUGH”, we will use an ERB template to print an <h1> with “enough”
# * Instead of saving the songs in an array, we will create a SongList class that has one “add_song” method, which will take an author and a
# name as parameters, and add the information to the song list.

# Also, we will have a couple more features:
# * We will have a dynamic route, like "/artists/:artist" that, for the "artist" parameter, prints all the songs that we have from him/her
# in our songs list.
# * We will have a "/search" route that, with a "term" parameter, prints all the artists and the songs which match the "term" parameter.

# Enjoy!
set :port, 3000
set :bind, '0.0.0.0'

class Mp3
	attr_accessor :song_list
	@song_list = []

	def add_song(artist, title)
		@song_list << [artist, title]
	end

	def song_size
		@song_list.length
	end
end

walkman = Mp3.new

get '/' do
	@song_list = walkman.song_list
	erb :index

end

post '/songs/new' do
	walkman.add_song(params[:artist],params[:title])
	erb :index
end

get '/enough' do
	erb :enough
end

