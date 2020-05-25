# users = [["Monica", "Gerard", "mlgvla@mail.com", "swordfish", 1], ["Tom", "Sefcovic", "tsbsn@mail.com", "tobey", 1], ["Melanie", "Feld", "mfoboe@mail.com", "reed", 1], ["David", "Krakauer", "dkclar@mail.com", "bechet", 1], ["Sarah", "Adams", "savla@mail.com", "iizuka", 1], ["Veronica", "Salas", "vsvla@mail.com", "chile", 1], ["Diane", "Bruce", "dbvln@mail.com", "panormo", 1], ["Julia", "Wong", "jwvln@mail.com", "vlndoc", 1], ["Lori", "Horowitz", "lhvln@mail.com", "fiddledoc", 1], ["Roberta", "Cooper", "coop@mail.com", "emerson", 1], ["Jon", "Kantor", "jkcello@mail.com", "lawyercellist", 1], ["Seth", "Jacobs", "sjcell@mail.com", "pfizercello", 1], ["William", "Eckfeld", "basso@mail.com", "basscomp", 1], ["Peter", "Weitzner", "pwbass@mail.com", "giora", 1], ["Judy", "Sugarman", "jsbass@mail.com", "summer", 1], ["Roland", "Wilk", "rollie@mail.com", "buffet", 1], ["Marion", "Wilk", "marion@mail.com", "duopartner", 1], ["Heidi", "Chisholm", "hoboe@mail.com", "fixitnow", 1], ["Sohum", "Gala", "sohumg@mail.com", "iloveviolin", 1], ["Carl", "Albach", "carltrumpet@mail.com", "gremlin", 1], ["Nina", "Allen", "nina@mail.com", "clevenger", 1], ["Jon", "Taylor", "jtbone@mail.com", "harvardgrad", 1]]

# users.each do |user|
#     User.create(first_name: user[0], last_name: user[1], email: user[2], password: user[3], visible: user[4])
# end

instruments = [["Violin", "strings"], ["Viola", "strings"], ["Cello", "strings"], ["Bass", "strings"], ["Flute", "woodwinds"], ["Piccolo", "woodwinds"], ["Oboe", "woodwinds"], ["English Horn", "woodwinds"], ["Clarinet", "woodwinds"], ["E-Flat Clarinet", "woodwinds"], ["Bass Clarinet", "woodwinds"], ["Bassoon", "woodwinds"], ["Contrabassoon", "woodwinds"], ["French Horn", "brass"], ["Trumpet", "brass"], ["Trombone", "brass"], ["Bass Trombone", "brass"], ["Tuba", "brass"], ["Timpani", "percussion"], ["Percussion", "percussion"], ["Harp", "strings"], ["Harpsichord", "keyboards"], ["Organ", "keyboards"], ["Piano", "keyboards"]]

instruments.each do |instrument|
    Instrument.create(name: instrument[0], category: instrument[1])
end
