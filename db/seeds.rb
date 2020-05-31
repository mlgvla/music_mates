users = [["Monica", "Gerard", "mlgvla@mail.com", "swordfish", "public"], ["Tom", "Sefcovic", "tsbsn@mail.com", "tobey", "public"], ["Melanie", "Feld", "mfoboe@mail.com", "reed", "public"], ["David", "Krakauer", "dkclar@mail.com", "bechet", "public"], ["Sarah", "Adams", "savla@mail.com", "iizuka", "public"], ["Veronica", "Salas", "vsvla@mail.com", "chile", "public"], ["Diane", "Bruce", "dbvln@mail.com", "panormo", "public"], ["Julia", "Wong", "jwvln@mail.com", "vlndoc", "public"], ["Lori", "Horowitz", "lhvln@mail.com", "fiddledoc", "public"], ["Roberta", "Cooper", "coop@mail.com", "emerson", "public"], ["Jon", "Kantor", "jkcello@mail.com", "lawyercellist", "public"], ["Seth", "Jacobs", "sjcell@mail.com", "pfizercello", "public"], ["William", "Eckfeld", "basso@mail.com", "basscomp", "public"], ["Peter", "Weitzner", "pwbass@mail.com", "giora", "public"], ["Judy", "Sugarman", "jsbass@mail.com", "summer", "public"], ["Roland", "Wilk", "rollie@mail.com", "buffet", "public"], ["Marion", "Wilk", "marion@mail.com", "duopartner", "public"], ["Heidi", "Chisholm", "hoboe@mail.com", "fixitnow", "public"], ["Sohum", "Gala", "sohumg@mail.com", "iloveviolin", "public"], ["Carl", "Albach", "carltrumpet@mail.com", "gremlin", "public"], ["Nina", "Allen", "nina@mail.com", "clevenger", "public"], ["Jon", "Taylor", "jtbone@mail.com", "harvardgrad", "public"]]

users.each do |user|
    User.create(first_name: user[0], last_name: user[1], email: user[2], password: user[3], visibility: user[4])
end

instruments = [["Violin", "strings"], ["Viola", "strings"], ["Cello", "strings"], ["Bass", "strings"], ["Flute", "woodwinds"], ["Piccolo", "woodwinds"], ["Oboe", "woodwinds"], ["English Horn", "woodwinds"], ["Clarinet", "woodwinds"], ["E-Flat Clarinet", "woodwinds"], ["Bass Clarinet", "woodwinds"], ["Bassoon", "woodwinds"], ["Contrabassoon", "woodwinds"], ["French Horn", "brass"], ["Trumpet", "brass"], ["Trombone", "brass"], ["Bass Trombone", "brass"], ["Tuba", "brass"], ["Timpani", "percussion"], ["Percussion", "percussion"], ["Harp", "strings"], ["Harpsichord", "keyboards"], ["Organ", "keyboards"], ["Piano", "keyboards"]]

instruments.each do |instrument|
    Instrument.create(name: instrument[0], category: instrument[1])
end

user_instruments = [[1, 1], [1, 2], [2, 12], [3, 7], [3, 8], [4, 9], [4, 11], [5, 2], [5, 1], [6, 2], [7, 1], [8, 1], [8, 24], [9, 1], [10, 3], [11, 3], [12, 3], [13, 4], [13, 3], [13, 24], [14, 4], [15, 4], [16, 9], [16, 14], [16, 12], [17, 24], [18, 7], [18, 8], [19, 1], [20, 15], [21, 14], [22, 16], [22, 17]]

user_instruments.each do |user_instrument|
    UserInstrument.create(user_id: user_instrument[0], instrument_id: user_instrument[1])
end