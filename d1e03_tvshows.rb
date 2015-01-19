#encoding: utf-8
require 'imdb'
require 'awesome_print'
class Serie

	attr_reader :title, :rating, :seasons, :episodes
	def initialize(title, rating, seasons, episodes)
		@title = title
		@rating = rating
		@seasons = seasons
		@episodes = episodes	
	end
end


class Reader
	def initialize(tvshows_src)
		series_file = IO.read(tvshows_src)
		@series_titles = series_file.split("\n")   #Array of movies titles.
		@series_data = []
		#Other way using readlines like 
	end

	def show_info
			@series_data = @series_titles.map do |title|
				Searcher.new.get_serie_info(title)
			end	
	
			# puts most_seasons_from
			# puts most_episodes_from
			#best_rated
	end

	def most_seasons_from
		@series_data.sort {|a,b| a.seasons <=> b.seasons}.last.title
	end

	def most_episodes_from
		@series_data.sort {|a,b| a.episodes <=> b.episodes}.last.title
		#@series_data.sort_by episodes
	end

	def best_rated
		@series_data.sort {|a,b| a.rating <=> b.rating}.last.title
	end

	# def top_list
	# 	@series_data.sort {|a,b| a.rating <=> b.rating}
	# end
	def result_count(word)
		Imdb::Search.new(word).movies.size
	end
end


class Searcher

	def get_serie_info(title)
		series_instances = Imdb::Search.new(title).movies.first
		series_data = Imdb::Serie.new(series_instances.id) #OK

		id = series_data.id
		rating = series_data.rating
		seasons = series_data.seasons.size  # Max season number 
		season_counter = 0
		episodes = 0
		while season_counter < seasons
			season_counter += 1
			episodes += series_data.season(season_counter).episodes.size    #Depende del número de seasons
		end
		episodes
		Serie.new(title, rating, seasons, episodes)
	end
end


# series_reader = Reader.new("tvshows.txt")
# puts series_reader.show_info



 # dexter_movie =Imdb::Search.new(‘Dexter’).movies.first


 #  dexter_serie = Imdb::Serie.new(dexter_movie.id)

