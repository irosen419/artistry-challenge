Artist.create(name: "Michael Jackson", age: rand(50), title: "King of Pop")
Artist.create(name: "Stevie Wonder", age: rand(50), title: "Little Stevie Wonder")
Artist.create(name: "Elvis Presley", age: rand(50), title: "the King")
Artist.create(name: "Whitney Houston", age: rand(50), title: "The Voice")
Artist.create(name: "Beyoncé", age: rand(50), title: "Destiny's Child")

Instrument.create(name: "Guitar", classification: "Strings")
Instrument.create(name: "Violin", classification: "Strings")
Instrument.create(name: "Flute", classification: "Woodwind")
Instrument.create(name: "Xylophone", classification: "Percussion")

Purchase.create(artist_id: Artist.all.first.id, instrument_id: Instrument.all.last.id)
Purchase.create(artist_id: Artist.all.second.id, instrument_id: Instrument.all.second.id)
Purchase.create(artist_id: Artist.all.third.id, instrument_id: Instrument.all.first.id)
Purchase.create(artist_id: Artist.all.first.id, instrument_id: Instrument.all.last.id)
Purchase.create(artist_id: Artist.all.fourth.id, instrument_id: Instrument.all.third.id)
