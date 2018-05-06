json.extract! zlecenie, :id, :Id_Kierownik, :Id_Opiekun, :Data_utworzenia, :Data_zlecenia, :Typ, :Opis, :Status, :Raport, :Info, :created_at, :updated_at
json.url zlecenie_url(zlecenie, format: :json)
