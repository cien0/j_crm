json.extract! zlecenie, :id, :kierownik_id, :opiekun_id, :data_utworzenia, :data_zlecenia, :typ, :opis, :status, :raport, :info, :created_at, :updated_at
json.url zlecenie_url(zlecenie, format: :json)
