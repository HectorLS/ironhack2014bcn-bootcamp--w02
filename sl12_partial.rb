require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'students.sqlite'
)
I18n.enforce_available_locales = false # get rid of the warning

class Student < ActiveRecord::Base
  # we have name, surnames, birthday, website, number_of_dogs
  # and first_programming_experience

  AGE_MINIMUM = 16

  validates_presence_of :name, :surnames
  validates_format_of :website, with: /\Ahttp:/
  validates_numericality_of :number_of_dogs, greater_than: 0
  validate :proper_age

  private

  def proper_age
    unless birthday < AGE_MINIMUM.years.ago
      errors.add(:birthday, 'is too young')
    end
  end
end

describe Student do
  before do
    @student = Student.new
    @student.name = 'Joe'
    @student.surnames = 'Ironhack'
    @student.birthday = Date.new(1987,12,5)
    @student.number_of_dogs = 1
    @student.website = 'http://ironhack.com'
  end

  it "should be valid with correct data" do
    expect(@student.valid?).to be_truthy
  end

  describe :name do
    it "should be invalid if it's missing" do
      @student.name = nil
      expect(@student.valid?).to be_falsy
    end
  end

  describe :surnames do
    # your turn!
  end
end
