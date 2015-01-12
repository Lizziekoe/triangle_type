require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangles')

get ('/') do
  erb(:home)
end

get ('/results') do

  side_a = params.fetch('side_a')
  side_b = params.fetch('side_b')
  side_c = params.fetch('side_c')
  triangle = Triangle.new(side_a, side_b, side_c)
  @answer = triangle.triangle_type()
  erb(:results)
end
