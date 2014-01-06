json.array!(@shows) do |show|
  json.extract! show, :id, :date, :venue, :address, :city, :state, :venue_phone, :notes, :tickets_url
  json.url show_url(show, format: :json)
end
