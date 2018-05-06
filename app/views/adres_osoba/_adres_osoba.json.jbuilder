json.extract! adres_osoba, :id, :Id_Osoba_kont, :Typ, :Kraj, :Kod_pocztowy, :Miasto, :Skrytka, :Ulica, :Nr_budynku, :Nr_lokalu, :Opis, :created_at, :updated_at
json.url adres_osoba_url(adres_osoba, format: :json)
