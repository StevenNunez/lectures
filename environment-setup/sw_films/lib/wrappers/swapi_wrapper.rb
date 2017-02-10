class SWAPIWrapper
  def get_movie(movie_id)
    JSON.parse(
      RestClient.get("http://swapi.co/api/films/#{movie_id}")
    )
  end
end
