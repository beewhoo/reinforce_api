require 'httparty'
require 'pry'


toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
toronto_wards_json = JSON.parse(toronto_wards_response.body)

arrays_hash = toronto_wards_json["objects"]
arrays_hash.each do |hash|
  puts hash["name"]
end



candidates = HTTParty.get('https://represent.opennorth.ca/candidates/')
candidates_json = JSON.parse(candidates.body)

arrays_hash = candidates_json["objects"]



arrays_hash.each do |hash|
  puts hash["party_name"]
  puts hash["first_name"]
  puts hash["last_name"]
  puts hash["email"]
  puts '-------------'
end
