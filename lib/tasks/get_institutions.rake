require 'open-uri'
require 'json'

namespace :get_data do
  desc "pull information from JSON file and update DB"
  task :read_from_open_nyc => :environment do
    url = "https://data.cityofnewyork.us/resource/8nqg-ia7v.json"
    begin
     results = JSON.parse(open(url).read)
     results.each do |result|
       institution = Institution.find_or_create_by(name: result["name_1"])
       address = get_address(result, institution)
       geo_info = get_geo_info(result, institution)

       ErrorMailer.error_info("Missing field") if any_errors(institution, address, geo_info)
      end
    rescue
      ErrorMailer.error_info("Unable to reach OpenNYCData endpoint")
    end
  end

  private
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

  def any_errors(institution, address, geo_info)
    institute.errors.any? || address.errors.any? || institute.errors.any?
  end

end
