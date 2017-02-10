class Movie
  def self.new_from_api(movie_hash)
    title = movie_hash.fetch("title")
    episode = movie_hash.fetch("episode_id")
    opening_crawl = movie_hash.fetch("opening_crawl")
    director = movie_hash.fetch("director")
    self.new(title: title, episode: episode, opening_crawl: opening_crawl, director: director)
  end

  attr_reader :title, :episode, :opening_crawl, :director
  def initialize(title:, episode:, opening_crawl:, director:)
    @title = title
    @episode = episode
    @opening_crawl = opening_crawl
    @director = director
  end
end
