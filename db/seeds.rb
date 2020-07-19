
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
    name: activity["name"], 
    location: activity["location"], 
    rating: activity["rating"],
    description: activity["description"], 
    image_url: "https://image.tmdb.org/t/p/w500/#{activity['poster_path']}", 
  )
end 

User.create(username: 'lizkim', password: '123', email: 'itslizkim@gmail.com')