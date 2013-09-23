json.array!(@expanses) do |expanse|
  json.extract! expanse, :detail, :amount, :dated
  json.url expanse_url(expanse, format: :json)
end
