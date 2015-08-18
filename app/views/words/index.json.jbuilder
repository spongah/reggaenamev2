json.array!(@words) do |word|
  json.extract! word, :id, :word, :position
  json.url word_url(word, format: :json)
end
