json.extract! faktury, :id, :kontrahenci_id, :nr_faktury, :kwota, :vat, :created_at, :updated_at
json.url faktury_url(faktury, format: :json)
