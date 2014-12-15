json.array!(@courses) do |course|
  json.extract! course, :id, :name, :description, :short_form
  json.url course_url(course, format: :json)
end
