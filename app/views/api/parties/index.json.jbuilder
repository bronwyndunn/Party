json.array! @parties do |party|
  json.name party.name
  json.location party.location
  party.guests do |guest|
    if guest.age > 40 && guest.age < 50
      json.name guest.name
    end
  end
end
