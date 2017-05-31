require 'open-uri'
require 'json'

namespace :get_data do
  desc "pull information from JSON file and update DB"
  task :read_from_open_nyc => :environment do
     url = "https://data.cityofnewyork.us/resource/8nqg-ia7v.json"
     results = JSON.parse(open(url).read)

     results.each do |result|
       institution = Institution.find_or_create_by(name: result["name_1"])
       get_address(result, institution)
       get_geo_info(result, institution)
     end
  end

  def get_address(result, institution)
    street = result["street_1"]
    city = result["city"]
    zip = result["zip"]

    Address.find_or_create_by(street: street, city: city, zip: zip, institution: institution)
  end

  def get_geo_info(result, institution)
    longitude = result["longitude"]
    latitude = result["latitude"]

    GeographicInformation.find_or_create_by(longitude: longitude, latitude: latitude, institution: institution)
  end

end
