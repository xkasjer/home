json.array!(@room_categories) do |room_category|
  json.extract! room_category, :id, :room_id, :category_id
  json.url room_category_url(room_category, format: :json)
end
