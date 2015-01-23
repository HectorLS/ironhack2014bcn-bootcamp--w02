#encoding: utf-8
require 'sinatra'
require 'sinatra/reloader'
require 'pp'
# SL6. Spotinatra

# In the times of Frank Sinatra, there was no Spotify. People had to see him live, or listen to him through a timetable. Can you imagine to
# live in a time like that? At least there was no Justin Beiber! :)

# Anyway, we woke up today with the strong will of telling Frank Sinatra how music is these days. It would be weird to go to his grave and
# tell him, so we will implement a little web application with Sinatra.

# This web application will have three different routes. 



#The first one will be in the home (‘/‘), will be GET, and will list the songs that
# we have sent to our web application. In the beginning, it will be empty, so nothing will be printed out.

# The second one will be ‘/songs/new’, will be POST, and will have both “name” and “artist” parameters. This will add a new song to our
# internal list of songs, and redirect to home (the first route).

# Finally, when we have sent 10 songs to the system through the second route, instead of being redirected to home, we will be redirected to
# a third route, called ‘/enough’, that shows a warning message, crafted by Sinatra himself, staging that current music, and I quote,
# “IS WORTH F***ING NOTHING”*.

# * I am not responsible from Sinatra words. I mean, he said it in his way.
set :port, 3000
set :bind, '0.0.0.0'



class Mp3
	def initialize
		@song_list = []
	end

	def add_song(artist, title)
		@song_list.push([artist, title])
	end

	def show_songs
		@song_list.to_s
	end

	def song_list
		@song_list.length
	end
end

walkman = Mp3.new

get '/' do
	if walkman.song_list > 3
		redirect '/enough'
	else
		walkman.show_songs
	end
end

post '/songs/new' do
	walkman.add_song(params["artist"], params["title"])
	puts walkman.song_list
	redirect "/"
end

get '/enough' do
	"Enough songs bro"
	walkman.show_songs
end


# 		curl -L --data "artist=ACDC 2&title=Highway to hell" 0.0.0.0:3000/songs/new
# 		curl -L --data "artist=Daddy Yankee&title=La Gasolina" 0.0.0.0:3000/songs/new
# 		curl -L --data "artist=Gorka y Adriá&title=Los Shublimes" 0.0.0.0:3000/songs/new
# 		curl -L --data "artist=Justin Bieber&title=I'm crap" 0.0.0.0:3000/songs/new
