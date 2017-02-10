describe SWAPIWrapper do
  it "returns a parsed film" do
    swapi = SWAPIWrapper.new
    VCR.use_cassette("a_new_hope") do
      movie = swapi.get_movie(1)
      expect(movie["title"]).to eq("A New Hope")
    end
  end
end
