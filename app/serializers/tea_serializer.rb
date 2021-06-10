class TeaSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :image, :keywords, :origin, :api_id, :brew_time, :temperature
  # set_id { 'null' }
end
