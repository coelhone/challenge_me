json.array!(@challenges) do |challenge|
  json.extract! challenge, :name, :date, :closed, :user_id, :desc, :challenge_file
  json.url challenge_url(challenge, format: :json)
end
