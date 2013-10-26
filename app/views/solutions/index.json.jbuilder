json.array!(@solutions) do |solution|
  json.extract! solution, :solution_file, :desc
  json.url solution_url(solution, format: :json)
end
