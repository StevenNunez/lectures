run ->(env) do
  require 'pry'
  binding.pry
  [200, {"Content-Type" => "text/html"}, ["<h1>Beef</h1>"]]
end
