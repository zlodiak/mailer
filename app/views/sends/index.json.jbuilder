json.array!(@sends) do |send|
  json.extract! send, :id, :message
  json.url send_url(send, format: :json)
end
