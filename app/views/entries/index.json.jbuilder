json.array!(@entries) do |entry|
  json.extract! entry, :id, :weight, :thigh, :waist, :chest, :upperarm, :notes
  json.url entry_url(entry, format: :json)
end
