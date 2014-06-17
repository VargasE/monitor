json.array!(@thermosta_models) do |thermosta_model|
  json.extract! thermosta_model, :id, :name, :thermostat_id
  json.url thermosta_model_url(thermosta_model, format: :json)
end
