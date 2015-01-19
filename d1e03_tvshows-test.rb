#encoding: utf-8
require_relative 'd1e03_tvshows.rb'


describe Reader do
  before do
    @series = Reader.new("tvshows.txt")
  end

  describe "#result_count" do
    it "Should return number of results for a given string" do
      result_count = @series.result_count("Cat")
      expect(result_count).to be >= (200)
    end
  end

  describe "#most_seasons_from" do
    it "Should return the serie with most seasons" do
      most_seasons_from = @series.most_seasons_from
      expect(most_seasons_from).to eq("Sons of Anarchy")
    end
  end

  describe "#most_episodes_from" do
    it "Should return the serie with most episodes" do
      most_episodes_from = @series.most_episodes_from
      expect(most_episodes_from).to eq("Sons of Anarchy")
    end
  end

  describe "#best_rated" do
    it "Should return the best rated serie" do
      best_rated = @series.best_rated
      expect(best_rated).to eq("Breaking Bad")   #Game of Thrones
    end
  end

  # describe "#top_list" do
  #   it "Should return the n best_list series" do
  #     top_list = @series.top_list(5)
  #     expect(top_list).to eq(["Game of Thrones", "Breaking Bad", "The Walking Dead", "Sons of Anarchy", "American Horror Story"])
  #   end
  # end
end