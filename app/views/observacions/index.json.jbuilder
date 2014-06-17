json.array!(@observacions) do |observacion|
  json.extract! observacion, :id, :text, :issue_id
  json.url observacion_url(observacion, format: :json)
end
