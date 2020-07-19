# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Plan.destroy_all
Destination.destroy_all
UserDestination.destroy.all
Activity.destroy_all

res = RestClient.get("https://maps.googleapis.com/maps/api/js?key=#{ENV['GOOGLE_MAPS_KEY']}&libraries=places")
res_body = res.body
activities = JSON.parse(res_body)

activities["results"].each do |activity|
  Activity.create(
    title: activity["title"], 
    vote_average: activity["vote_average"], 
    vote_count: activity["vote_count"],
    overview: activity["overview"], 
    image_url: "https://image.tmdb.org/t/p/w500/#{activity['poster_path']}", 
    release_year: activity["release_date"].split("-")[0].to_i
  )
end 

User.create(username: 'lizkim', password: '123', email: 'itslizkim@gmail.com')