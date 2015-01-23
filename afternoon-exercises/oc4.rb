#encoding: utf-8
require 'rubygems'
require 'active_record'
require 'date'
require 'sinatra'
require 'sinatra/reloader'
require 'pp'

set :port, 3000
set :bind, '0.0.0.0'
# OC4. IronhackLIST

# Oh, man. We are so proud of our Student class. Validated, short, compact. Is it love?

# Anyway, the thing you probably missed from SL12 is having some web in between. Some routes, some Sinatra, some ERB… so let’s do it, why
# not?

# You will now implement a Ironhack directory of students, that shows a list of everyone’s name, surname, birthday, a clickable link to
# their website, if they have programming experience or not (Yes/No) and, more importantly, ¡the number of dogs they have!

# Apart from that, you should be able to create new students through the interface, and also delete the ones which have 0 dogs (we cannot
# kick the others out, they have dogs!).

# Go for it!

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'students.sqlite'
)

#===================  Class  ================================#

class Student < ActiveRecord::Base
  # we have name, surnames, birthday, website, number_of_dogs
  # and first_programming_experience

  AGE_MINIMUM = 1

  validates_presence_of :name, :surnames
  validates_format_of :website, with: /\Ahttp:/
  validates_numericality_of :number_of_dogs, greater_than: 0
  #validates_
  validate :proper_age

  private

  def proper_age
    unless birthday < AGE_MINIMUM.years.ago
      errors.add(:birthday, 'is too young')
    end
  end
end



#=================== Sinatra  ================================#


get '/' do
	@students_list = Student.all
	erb :data
end

post '/newstudent' do

	ts = Student.new
	ts.name = params[:name]
	ts.surnames = params[:surnames]
	ts.birthday = params[:birthday]
	ts.website = params[:website]
	ts.number_of_dogs = params[:number_of_dogs]
	ts.first_programming_experience = params[:first_programming_experience]

	ts.save
	redirect '/'
end

__END__



THE CRAP UNDER THE CARPET

	temp_student = Student.create(
		:name = params[:name], 
		:surnames = params[:surnames], 
		:birthday = params[:birthday], 
		:website = params[:website], 
		:number_of_dogs = params[:number_of_dogs], 
		:first_programming_experience = params[:first_programming_experience]
		)

	temp_student = Student.create(name, surnames, birthday, website, number_of_dogs, first_programming_experience)
		)


	temp_student = Student.create(name, surnames, birthday, website, number_of_dogs, first_programming_experience)
		)

temp_student = Student.create(name: name, surnames: surnames, birthday: birthday, website: website, number_of_dogs: number_of_dogs, first_programming_experience: first_programming_experience)
		)

temp_student = Student.create(name: name, surnames: surnames, birthday: birthday, website: website, number_of_dogs: number_of_dogs, first_programming_experience: first_programming_experience)
		)


	ts = Student.new
	ts.name = params[:name]
	ts.surnames = params[:surnames]
	ts.birthday = params[:birthday]
	ts.website = params[:website]
	ts.number_of_dogs = params[:number_of_dogs]
	ts.first_programming_experience = params[:first_programming_experience]

	ts.save
	redirect '/'



	Student.create(name: name, surnames: surnames, birthday: birthday, website: website, number_of_dogs: number_of_dogs, first_programming_experience: first_programming_experience)
	redirect '/'