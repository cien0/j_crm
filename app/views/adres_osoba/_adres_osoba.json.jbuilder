json.extract! adres_osoba, :id, :osoba_kont_id, :typ_adresu_id, :kraj, :kod_pocztowy, :miasto, :skrytka, :ulica, :nr_budynku, :nr_lokalu, :opis, :created_at, :updated_at
json.url adres_osoba_url(adres_osoba, format: :json)
