puts "Destroy all users..."
User.destroy_all
puts "Destroy all museums..."
Museum.destroy_all
puts "Destroy all chatrooms..."
Chatroom.destroy_all
puts "Creating user..."

user_sara = User.new(first_name: "Sara", last_name: "Sara", email: "sara@sara.com", password: "123456", date_of_birth: "1993,7,9")
user_leo = User.new(first_name: "Leo", last_name: "Leo", email: "leo@leo.com", password: "123456", date_of_birth: "1993,7,9")
user_ana = User.new(first_name: "Ana", last_name: "Ana", email: "sara@sara.com", password: "123456", date_of_birth: "1993,7,9")
user_malvi = User.new(first_name: "Malvi", last_name: "Malvi", email: "malvi@malvi.com", password: "123456", date_of_birth: "1993,7,9")
user_barbara = User.new(first_name: "Barbara", last_name: "Barbara", email: "barbara@barabra.com", password: "123456", date_of_birth: "1993,7,9")

puts "Creating museums..."

alte_nationalgalerie = Museum.new(
  name: 'Alte Nationalgalerie',
  address: "Bodestr. 3, 10178 Berlin",
  telephone: "030 266 42 42 42",
  website: 'https://www.smb.museum/en/museums-institutions/altes-museum/home/',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=19&at=rp90cJUYPVo&lang=en',
  price: 10,
  price_reduced: 5,
  price_info: '10 Euro, red. 5 Euro',
  opening_hours: "Tue-Sun 10-18, Thu 10-20",
  description: "The Alte Nationalgalerie houses one of the most important collections of 19th century
  painting in Germany and includes masterpieces by Caspar David Friedrich, Adolph Menzel,
  Edouard Manet, Claude Monet, not to mention Auguste Renoir and Auguste Rodin.
  The Alte Nationalgalerie is one of the five museums forming the ensemble known as Berlin’s
  Museum Island – a UNESCO World Heritage site. The Museum was built between 1866 and 1876
  and restored in neoclassical style by Friedrich August Stüler in the style of a Greek temple.
  The Museum reopened to the public after a thorough restoration in 2001.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221134/Profile%20Pictures%20of%20Museums/Alte_Nationalgalerie1a_vba5lr.jpg",
  hours: {
    "0": {start: "00:00", end: "00:00"},
    "1": {start: '10:00', end: '18:00'},
    "2": {start: '10:00', end: '18:00'},
    "3": {start: '10:00', end: '20:00'},
    "4": {start: '10:00', end: '18:00'},
    "5": {start: '10:00', end: '18:00'},
    "6": {start: '10:00', end: '18:00'}
    }
)

altes_museum = Museum.new(
  name: 'Altes Museum',
  address: 'Am Lustgarten 1, 10178 Berlin',
  telephone: '030 20 90 55 77',
  website: 'https://www.smb.museum/en/museums-institutions/altes-museum/home/',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=12&at=rp90cJUYPVo&lang=en',
  price: 10,
  price_reduced: 5,
  price_info: '10 Euro, red. 5 Euro',
  opening_hours: "Tue-Sun 10-18, Thu 10-20, Mon closed",
  description: "The Altes Museum is Berlin’s oldest museum. It is
  part of the UNESCO-listed heritage site known as Museum Island.
  Built between 1823 and 1830, The Altes Museum is one of the most important buildings of Classicism in
  Germany. Originally created for all Berlin art collections, the Altes
  Museum has housed the Collection of Classical Antiquities since 1904.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221134/Profile%20Pictures%20of%20Museums/Altes_Museum1_rfqpll.jpg",
  hours: {
    "0": {start: "00:00", end: "00:00"},
    "1": {start: '10:00', end: '18:00'},
    "2": {start: '10:00', end: '18:00'},
    "3": {start: '10:00', end: '20:00'},
    "4": {start: '10:00', end: '18:00'},
    "5": {start: '10:00', end: '18:00'},
    "6": {start: '10:00', end: '18:00'}
    },

  )

bode_museum = Museum.create(
  name: 'Bode-Museum',
  address: "Am Kupfergraben, 10117 Berlin",
  telephone: "030 266 424 242",
  website: 'https://www.smb.museum/en/museums-institutions/bode-museum/home/',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=27&at=rp90cJUYPVo&lang=en',
  price: 12,
  price_reduced: 6,
  price_info: '12 Euro, red. 6 Euro',
  opening_hours: "Tue-Wed 10-18, Thu 10-20, Fri-Sun 10-18",
  description: "The baroque Bode-Museum, the fourth museum to be built as part of Berlin’s Museum Island on the Spree ,
  is home to the Sculpture Collection and Museum of Byzantine Art.
  It was completed in 1904 and designed by court architect Ernst von Ihne under Kaiser Wilhelm II.
  There are over 150 paintings to be seen with a particularly strong presence of Roman and Byzantine works from the
  3rd to the 15th century A.D. from regions from the Mediterranean basin ranging from Byzantine
  Constantinople, Greece and the Balkans to north African countries and Russia’s iconographic art.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221133/Profile%20Pictures%20of%20Museums/Bode1_zem2xo.jpg",
  hours: {
    "0": {start: "00:00", end: "00:00"},
    "1": {start: '10:00', end: '18:00'},
    "2": {start: '10:00', end: '18:00'},
    "3": {start: '10:00', end: '20:00'},
    "4": {start: '10:00', end: '18:00'},
    "5": {start: '10:00', end: '18:00'},
    "6": {start: '10:00', end: '18:00'}
    },
  )

friedrichswerdersche_kirche = Museum.create(
  name: 'Friedrichswerdersche Kirche',
  address: "Werderscher Markt 1, 10117 Berlin",
  telephone: "030 266 424 242",
  website: 'https://www.smb.museum/en/museums-institutions/friedrichswerdersche-kirche/about-us/profile/',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=83&ticketSelection=%5Bobject%20Object%5D',
  price: 0,
  price_reduced: 0,
  price_info: '0 Euro',
  opening_hours: "Tue-Sun 10-6, Thu 10-8",
  description: "The Friedrichwerdersche Kirche shows the collection of 19th century sculpture in the nave with Schinkel’s own work and life exhibited on the top floor.
  The Friedrichwerdersche Kirche (1830), Karl Friedrich Shinkel’s neo-gothic masterpiece lays only a short walk away from the Museum Island area on the Werdeschermarkt immediately recognisable by its twin square towers.
  It is best known because of its permanent exhibition on the life and works of Karl Friedrich Schinkel, Prussia’s renowned architect and his contemporaries Johann Gottfried Schadow and Christian Daniel Rauch. The collection of 19th century sculpture is exhibited in the nave with Schinkel’s own work and life exhibited on the top floor.
  Highlights include the original model for the sculpture of the princesses Louise and Friedericke and portraits from the times of Goethe from Christian Daniel Rauch and contemporaries.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221133/Profile%20Pictures%20of%20Museums/Friedrichwerdersche1_cn1xpk.jpg",
  hours: {
    "0": {start: "00:00", end: "00:00"},
    "1": {start: '10:00', end: '18:00'},
    "2": {start: '10:00', end: '18:00'},
    "3": {start: '10:00', end: '20:00'},
    "4": {start: '10:00', end: '18:00'},
    "5": {start: '10:00', end: '18:00'},
    "6": {start: '10:00', end: '18:00'}
    }
)

gemaldegalerie = Museum.create(
  name: 'Gemäldegalerie',
  address: "Stauffenbergstraße 40, 10785, Berlin",
  telephone: "030 266 424 242",
  website: 'https://www.smb.museum/en/museums-institutions/gemaeldegalerie/home.html',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=20&at=rp90cJUYPVo',
  price: 10,
  price_reduced: 5,
  price_info: '10,- Euro, red. 5,- Euro',
  opening_hours: "Mon closed. Tue, Wed, Fri 10-18, Thu 10-20, Sat+Sun 11-18",
  description: "Berlin's Gemäldegalerie (Picture Gallery), also known as the Old Masters Museums is one of the world’s most impressive collections of European painting exhibiting an astonishing range of European art from the 13th to the 18th centuries from the great European masters. Berlin’s Gemäldegalerie (Picture Gallery), also known as the Old Masters Museums is one of the world’s most impressive collections of European painting exhibiting an astonishing range of European art from the 13th to the 18th centuries from the great European masters including Botticelli, Dürer, Rembrandt, Rubens and Titian. For Rembrandt fans this is the world’s largest collection with over 16 of his paintings. In the daunting new Kulturforum near Potsdamer Platz over 3,000 works of art are exhibited chronologically in over 53 Halls through separate epochs, art genres and schools in the daunting new Kulturforum near Potsdamer Platz designed in 1997, encompassing 7,000 sq m of exhibition space. Over 900 masterpieces can be seen in the Main Gallery collection.
  For orientation, the tour can start to the right of the entrance rotunda on the main floor with galleries I to 4 of German painting from the 13th to 16th centuries. Dutch Masters in the adjacent rooms include ‘The Netherlandish Proverbs’ by Peter Bruegel. The Rembrandts can be seen in gallery 10 and further on are Titian’s and Raphel’s Madonnas.
  Gainsborough and Reynolds as well as Goya and Velasquez are divided between the Great Hall (Hauptgalerie) and the Study Gallery. Highlights include Caravaggio’s Amor Victorius (1602) and Rubens’ Perseus Liberating Andromeda (1622). Excellent audio guides in English are available included in the admission price_info.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221133/Profile%20Pictures%20of%20Museums/Gema%CC%88ldegalerie_xwh63q.jpg",
  hours: {
    "0": {start: "00:00", end: "00:00"},
    "1": {start: '10:00', end: '18:00'},
    "2": {start: '10:00', end: '18:00'},
    "3": {start: '10:00', end: '20:00'},
    "4": {start: '10:00', end: '18:00'},
    "5": {start: '11:00', end: '18:00'},
    "6": {start: '11:00', end: '18:00'}
    }
)

hamburger_bahnhof = Museum.create(
  name: 'Hamburger Bahnhof Museum der Gegenwart',
  address: "Invalidenstr. 50, 10557, Berlin",
  telephone: "030 266 424 242",
  website: 'https://www.smb.museum/en/museums-institutions/hamburger-bahnhof/home.html',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=25&ticketSelection=%5Bobject%20Object%5D',
  price: 10,
  price_reduced: 5,
  price_info: '10,- Euro, red. 5,- Euro',
  opening_hours: "Mon closed. Tue, Wed, Fri 10-18, Thu 10-20, Sat+Sun 11-18",
  description: "The Hamburger Bahnhof Museum für Gegenwart (Museum for Contemporary Art) is Berlin’s most important exhibition space dedicated exclusively to contemporary art from the 1950s to the present. The reconstruction and conversion of the 1840’s neo-renaissance building – Berlin’s only remaining rail Terminus from bygone days – by Josef Paul Kleihus, resulted in the re-opening of the Hamburger Banhof on 2 November, 1996 with a 13,000 sq m exhibition surface after four years of extensive renovation by architect Josef Paul Kleihues.
  As part of Berlin’s Nationalgalerie and its third location, the museum houses three highly prestigious collections. Along with the permanent Nationalgalerie collection are the renowned Frederick Christian Flick, Erich Marx and Marzona collections.
  Since 1996 Hamburger has consistently consolidated its reputation as one of the world’s most highly-regarded contemporary art museums. In 2004 the prestigious Friedrich Christian Flick collection encompassing ca 2,000 works by approximately 150 artists was housed in the refurbished former freight depots of the Lehrter Banhof which became the converted Hall, or East wing, known as “Rieckhallen”. As a long-term loan it will remain on display until 2011. In 2,002 the collection was again enlarged by the acquisition of Egidio Marzona’s collection of Conceptual Art and Arte Povera.
  The core elements of the museum’s collection stem from the legacy of Berlin collector Dr. Erich Marx who assembled some of the greatest masterpieces of the mid 20th century - works from contemporary giants such as the provocative German ‘enfant terrible’ Joseph Beuys, Andy Warhol, Cy Twombly, Anselm Kiefer. Amongst the key pieces are iconic works of art such as Warhol’s ‘Mao’ and Joseph Beuys’ installations including over 450 drawings from Beuys and 60 sketches from Andy Warhol. Conceived as a showcase for the multi-media dimension of contemporary international art the scope of the museums’ exhibits encompasses other contemporary art forms such as film, video, design and photography with installation work from Nam June Paik and experimental work from artists such as Sol Lewitt, Marchel Duchamp and Sigmar Polke and Jason Rhoades.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221133/Profile%20Pictures%20of%20Museums/Hamburger_Bahnhof_rqwtfq.jpg",
  hours: {
    "0": {start: "00:00", end: "00:00"},
    "1": {start: '10:00', end: '18:00'},
    "2": {start: '10:00', end: '18:00'},
    "3": {start: '10:00', end: '20:00'},
    "4": {start: '10:00', end: '18:00'},
    "5": {start: '11:00', end: '18:00'},
    "6": {start: '11:00', end: '18:00'}
    }
)

james_simon = Museum.create(
  name: 'James-Simon-Galerie',
  address: "Bodestraße, 10178, Berlin",
  telephone: "030 266 424 242",
  website: 'https://www.smb.museum/en/museums-institutions/james-simon-galerie/home.html',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=81&ticketSelection=%5Bobject%20Object%5D',
  price: 0,
  price_reduced: 0,
  price_info: 'Free (except special exhibitions)',
  opening_hours: "Daily 09:30 to 18:30, Thu 09:30 to 20:30",
  description: "The James-Simon-Gallery on Museum Island is the hub of the World Heritage-listed Pergamon Museum, Old National Gallery, Bode Museum, Old Museum and New Museum ensembles.
  The James-Simon-Gallery was opened on 12 July 2019 in the presence of German Chancellor Angela Merkel (CDU). The Pergamon Museum can currently be reached directly through the 134 million euro building via an entrance on the upper floor and the Neues Museum, which is connected to the basement.
  The building was named after the entrepreneur and art collector James Simon (1851-1932) by the British star architect David Chipperfield. Berlin's museums owe some 10,000 objects to his donations. These include the famous bust of Nefertiti, the main wife of the Egyptian pharaoh Akhenaten from the 14th century BC.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221133/Profile%20Pictures%20of%20Museums/James_Simon1_qyz0lp.jpg",
  hours: {
    "0": {start: '09:30', end: '18:30'},
    "1": {start: '09:30', end: '18:30'},
    "2": {start: '09:30', end: '18:30'},
    "3": {start: '09:30', end: '20:30'},
    "4": {start: '09:30', end: '18:30'},
    "5": {start: '09:30', end: '18:30'},
    "6": {start: '09:30', end: '18:30'}
    }
)

kunstgewerbemuseum = Museum.create(
  name: 'Kunstgewerbemuseum',
  address: "Tiergartenstraße 6, 10785, Berlin",
  telephone: "030 266 424 242",
  website: 'https://www.smb.museum/en/museums-institutions/kunstgewerbemuseum/home.html',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=23&ticketSelection=%5Bobject%20Object%5D',
  price: 8,
  price_reduced: 4,
  price_info: '8 Euro, red. 4 Euro',
  opening_hours: "Tue-Fri 10-18 Sat-Sun 11-18",
  description: "Berlin’s Kunstgewerbe Museum is a splendid collection of decorative arts and home furnishing exhibits ranging from the Middle Ages to the modern day. Berlin’s Kunstgewerbe Museum (Museum of Applied Arts) with its second site opened in 2004 - in Schloss Köpenick (Köpenick Palace) is a splendid collection of decorative arts and home furnishing exhibits ranging from the Middle Ages to the modern day. The range of craftsmanship displayed in the museum includes some great treasures such as the medieval Welpenschatz or Guelph Treasure and Emperor Barbarossa’s Baptismal Font as examples of the intricate masterpieces of goldsmiths’ skills as well as silverware of great beauty such as the Lüneberg Council silverware.
  The objects which range from ceramics to furniture, jewellery, glass, silverware; Renaissance Majolica and a smattering of utilitarian, everyday household products are displayed, shedding light on the long historical development of the applied arts from the Middle Ages to Art Nouveau. The present day is represented by the recently acquired fashion collection Kamer-Ruf.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221133/Profile%20Pictures%20of%20Museums/Kunstgewerbemuseum_xqrpzh.jpg",
  hours: {
    "0": {start: "00:00", end: "00:00"},
    "1": {start: '10:00', end: '18:00'},
    "2": {start: '10:00', end: '18:00'},
    "3": {start: '10:00', end: '18:00'},
    "4": {start: '10:00', end: '18:00'},
    "5": {start: '11:00', end: '18:00'},
    "6": {start: '11:00', end: '18:00'}
    }
)


kupferstichkabinett = Museum.create(
  name: 'Kupferstichkabinett',
  address: "Matthäikirchplatz 8, 10785, Berlin",
  telephone: "030 266 424 242",
  website: 'https://www.smb.museum/en/museums-institutions/kupferstichkabinett/home.html',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=22&ticketSelection=%5Bobject%20Object%5D',
  price_info: 'Depending on the exhibition',
  opening_hours: "Exhibition: Tue-Fri 10-18, Sat-Sun 11-18",
  description: "The Kupferstichkabinett in Berlin is one of the world's most important museums of the graphic arts. With 110, 000 drawings, watercolours, pastels and oils sketches, Berlin’s Kupferstichkabinett (Museum of Prints and Drawings) reputedly holds one of the world’s most complete collections of illuminated manuscripts and the art of paper illustration. As one of the most important graphic art museums in the world it spans an astounding array of 1,000 years of art, culture and media history ranging from high Middle-Ages’ codices – the codex was the first modern form of book to replace scrolls - to contemporary art.
  The carefully protected exhibits in special glass casings include 14th century masterpieces such as hand illustrated books and manuscripts from the great masters such as Dürer, through Rembrandt, Schinkel and Picasso.
  Highlights include Adolph Menzel’s drawings, prints originating from many ages and schools – modern and contemporary art is represented with Munch, Kirchner, Picasso and Giacometti as well as US Pop art.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646230251/Profile%20Pictures%20of%20Museums/Kupferstichkabinett1_b5mpd0.jpg",
  hours: {
    "0": {start: "00:00", end: "00:00"},
    "1": {start: '10:00', end: '18:00'},
    "2": {start: '10:00', end: '18:00'},
    "3": {start: '10:00', end: '18:00'},
    "4": {start: '10:00', end: '18:00'},
    "5": {start: '11:00', end: '18:00'},
    "6": {start: '11:00', end: '18:00'}
    }
)

berggrun = Museum.create(
  name: 'Museum Berggrün',
  address: "Schloßstr. 1, 14059, Berlin",
  telephone: "030 266 424 242",
  website: 'https://www.smb.museum/en/museums-institutions/museum-berggruen/home.html',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=34&ticketSelection=%5Bobject%20Object%5D',
  price: 12,
  price_reduced: 6,
  price_info: '12,- Euro, red. 6,- Euro',
  opening_hours: "Tue-Fr 10-18, Sat and Sun 11-18",
  description: "Heinz Berggrün‘s collection, opened to the public in 1996, is one of Berlin‘s most popular modern art galleries, situated opposite Schloss Charlottenburg.
  Its modernist highlights include works by Picasso, Klee, Matisse, Braque and Giacometti. The core exhibition entitled ‘Picasso and his Times’ dedicates three floors to painting, sculpture and drawings. Over 100 examples of Picasso’s work are exhibited from early student sketches, to the Blue and Rose period with his ‘Seated Harlequin’, from the dramatic Cubist years right up to the year before his death in 1973. 60 of Paul Klee’s works from 1917 onwards cover a creative lifespan of over twenty years.
  Other exhibits of note are Giacometti’s sculptures and some of the African artefacts which inspired 20th century Modernists. The collector Heinz Berggruen died in 2007 and is buried in Berlin-Dahlem.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221133/Profile%20Pictures%20of%20Museums/Museum_Berggru%CC%88n1_sjgzpk.jpg",
  hours: {
    "0": {start: "00:00", end: "00:00"},
    "1": {start: '10:00', end: '18:00'},
    "2": {start: '10:00', end: '18:00'},
    "3": {start: '10:00', end: '18:00'},
    "4": {start: '10:00', end: '18:00'},
    "5": {start: '11:00', end: '18:00'},
    "6": {start: '11:00', end: '18:00'}
    }
)

museum_europaischer_kulturen = Museum.create(
  name: 'Museum Europäischer Kulturen',
  address: "Arnimallee 25, 14195, Berlin",
  telephone: "030 266 424 242",
  website: 'https://www.smb.museum/en/museums-institutions/museum-europaeischer-kulturen/home.html',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=3&ticketSelection=%5Bobject%20Object%5D',
  price: 8,
  price_reduced: 4,
  price_info: '8 Euro, red. 4 Euro',
  opening_hours: "Tue-Fri 10-17, Sat-Sun 11-18",
  description: "The Museum of European Cultures in Berlin-Dahlem is devoted to the lifeworlds in Europe and European cultural contacts from the 18th century until today. After two years of renovation work, the museum opened again in 2011 with three newly designed exhibitions.
  The permanent exhibition on the topic “Cultural Contacts – Living in Europe” and the temporary exhibition “Explorations in Europe. Visual Studies in the 19th Century” will be presented as well as the “Study Collection” in which object groups from the collections of the Museum of European Cultures – National Museums Berlin will be displayed on a regularly changing basis.
  With about 275,000 original objects, it houses one of the largest collections of European collections on every day life and popular art. The topics are as manifold as the cultures in Europe: Weddings or commemorations of the dead, the cult of Napoleon to Halloween, music on Sardinia, the historically pagan 'Perchten’ processions in the Alps…
  The Museum of European Cultures was founded in 1999 by merging the 110 year-old Museum of Folklore (Museum für Volkskunde) with the European collection of the Museum of Ethnology (Museum für Völkerkunde).",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221132/Profile%20Pictures%20of%20Museums/Museum_Europa%CC%88ischer_Kulturen1_hwrqvt.jpg",
  hours: {
    "0": {start: "00:00", end: "00:00"},
    "1": {start: '10:00', end: '17:00'},
    "2": {start: '10:00', end: '17:00'},
    "3": {start: '10:00', end: '17:00'},
    "4": {start: '10:00', end: '17:00'},
    "5": {start: '11:00', end: '18:00'},
    "6": {start: '11:00', end: '18:00'}
    }
)

museum_fotografie = Museum.create(
  name: 'Museum für Fotografie, Helmut Newton Foundation',
  address: "Jebensstraße 2, 10623, Berlin",
  telephone: "030 266 424 242",
  website: 'https://www.smb.museum/en/museums-institutions/museum-fuer-fotografie/home.html',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=31&at=rp90cJUYPVo&lang=en',
  price: 10,
  price_reduced: 5,
  price_info: '10 Euro, reduced 5 Euro',
  opening_hours: "Tue-Sun 11-19, Thu 11-20",
  description: "The Museum für Fotografie (Museum of Photography) and the Helmut Newton Foundation present all forms of photography from the 19th to the 21st century.
  Since the summer of 2004, the Museum of Photography has been a crowd-puller for photography enthusiasts from all over the world. More than one million visitors have been fascinated by the exhibitions of the Helmut Newton Foundation in recent years.
  Kunstbibliothek and Helmut Newton Foundation
  With the opening of the glamorously renovated Kaisersaal in 2010, two protagonists will be presenting large exhibitions on a total of 2,000 square metres in the Museum of Photography: the Photography Collection of the Kunstbibliothek in the Kaisersaal on the second floor, and the Helmut Newton Foundation on the two lower floors with the presentation ’Helmut Newton's Private Property’, which has been successful for years, and the exhibitions on Helmut Newton's work and his companions.
  Collection of Photography of the Kunstbibliothek
  The Photography Collection has 650 square metres of exhibition space and new lighting and air-conditioning technology in the Kaisersaal for the presentation of all forms of photography from the 19th to the 21st century. This is the largest exhibition room of a museum for photography in Berlin.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221132/Profile%20Pictures%20of%20Museums/Museum_fu%CC%88r_Fotografie_1_ov7fzg.jpg",
  hours: {
    "0": {start: "00:00", end: "00:00"},
    "1": {start: '11:00', end: '19:00'},
    "2": {start: '11:00', end: '19:00'},
    "3": {start: '11:00', end: '20:00'},
    "4": {start: '11:00', end: '19:00'},
    "5": {start: '11:00', end: '19:00'},
    "6": {start: '11:00', end: '19:00'}
    }
)

museumsinsel = Museum.create(
  name: 'Museumsinsel',
  address: "Bodestraße 1-3, 10178, Berlin",
  telephone: "030 266 424 242",
  website: 'http://www.smb.museum/en/museums-institutions/museumsinsel-berlin/home.html',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=76&at=rp90cJUYPVo&lang=en',
  price: 18,
  price_reduced: 9,
  price_info: 'Combi-ticket Museum Island 18.00 Euro, reduced 9.00 Euro',
  opening_hours: "Mon-Fri 9-16",
  description: "Museum Island is a unique ensemble of five museums on Spree Island in the district of Mitte in Berlin. The entire complex is listed by UNESCO as a World Heritage Site.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221132/Profile%20Pictures%20of%20Museums/Museumsinsel1_pnzqfb.jpg",
  hours: {
    "0": {start: '09:00', end: '16:00'},
    "1": {start: '09:00', end: '16:00'},
    "2": {start: '09:00', end: '16:00'},
    "3": {start: '09:00', end: '16:00'},
    "4": {start: '09:00', end: '16:00'},
    "5": {start: "00:00", end: "00:00"},
    "6": {start: "00:00", end: "00:00"}
    }
)


neues_museum = Museum.create(
  name: 'Neues Museum',
  address: "Bodestraße 3, 10178, Berlin",
  telephone: "030 266 424 242",
  website: 'http://www.smb.museum/en/museums-institutions/neues-museum/home.html',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=56&ticketSelection=%5Bobject%20Object%5D',
  price: 10,
  price_reduced: 5,
  price_info: '10 Euro, reduced 5 Euro',
  opening_hours: "Tue-Sun 10-18, Thu 10-20, Mon closed",
  description: "The opening of the Neues Museum marked a key chapter in the history of 19th-century art, museum design, and technology. Designed by Friedrich August Stüler and built from 1843 to 1855, the building suffered severe damage during World War II, after which it was left as an abandoned bombsite. Emergency measures to secure the structure were only taken in the 1980s.
  Painstaking restoration work got under way in 2003 and was undertaken by the offices of the British architect David Chipperfield. The building’s façade and interiors were carefully preserved, the scars of the war were not patched over but rather incorporated into the restoration of the landmarked building. What emerged was a restored historical building that is simultaneously a modern museum. Chipperfield thus managed to lend this extraordinary building and former ruin a unique and wholly authentic splendour.
  The museum reopened its doors to the public in 2009 and combines geographically and thematically related exhibits pooled together from three separate collections at the Staatliche Museen zu Berlin: the collection of Egyptian art from the Ägyptisches Museum und Papyrussammlung, of prehistoric objects from the Museum für Vor- und Frühgeschichte, and of classical antiquities from the Antikensammlung. This joint exhibition featuring exhibits of unparalleled breadth and diversity allows visitors to trace the development of prehistoric and protohistoric cultures, spanning from the Middle East to the Atlantic, from north Africa to Scandinavia.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221132/Profile%20Pictures%20of%20Museums/Neues_Museum1_uehw8f.jpg",
  hours: {
    "0": {start: "00:00", end: "00:00"},
    "1": {start: '10:00', end: '18:00'},
    "2": {start: '10:00', end: '18:00'},
    "3": {start: '10:00', end: '20:00'},
    "4": {start: '10:00', end: '18:00'},
    "5": {start: '10:00', end: '18:00'},
    "6": {start: '10:00', end: '18:00'}
    }
)

neue_nationalgalerie = Museum.create(
  name: 'Neue Nationalgalerie',
  address: "Potsdamer Str. 50, 10785 Berlin",
  telephone: "030 266 424 242",
  website: 'https://www.smb.museum/museen-einrichtungen/neue-nationalgalerie/home/',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=26&ticketSelection=%5Bobject%20Object%5D',
  price: 12,
  price_reduced: 6,
  price_info: '12 Euro, reduced 6 Euro',
  opening_hours: "Tue-Sun 10-18, Thu 10-20, Mon closed",
  description: "The Neue Nationalgalerie is dedicated to the twentieth-century art from the Nationalgalerie’s diverse collection, which is on show at five further locations: Alte Nationalgalerie, Friedrichswerdersche Kirche, Museum Berggruen, Sammlung Scharf-Gerstenberg and Hamburger Bahnhof – Museum für Gegenwart – Berlin.
  After nearly fifty years of use, the Neue Nationalgalerie was extensively refurbished and modernised from 2015 until 2020.
  The Neue Nationalgalerie (1965-1968) is the last major project completed by the internationally famous architect Ludwig Mies van der Rohe. His long-term preoccupation with creating fluid, open spaces culminated in the design of the glazed upper pavilion of the gallery. The architect died shortly after the building’s inauguration. With its steel roof and gracefully austere architectural language, the Neue Nationalgalerie not only stands as an icon of modernism, but as testament to a visionary architect of the twentieth century.
  When it was built, the museum stood on the edge of what was then West Berlin. It was constructed as one of the vital cornerstones of the Kulturforum, which planned by another great architect of the post-war period, Hans Scharoun. Thanks to the reunification of Germany and of Berlin, and the ensuing construction activity at Potsdamer Platz, the Neue Nationalgalerie no longer stands in an abandoned wasteland but in the busy heart of the city.
  The history of the Neue Nationalgalerie is inextricably linked to the political division of Germany and the city of Berlin that was a consequence of the Second World War. The Nationalgalerie’s (National Gallery’s) collection, originally on display on the Museumsinsel Berlin (Museum Island Berlin) and later, in the 1920s, also in the Kronprinzen Palais on the boulevard Unter den Linden, was initially managed by the Municipality of Greater Berlin in the immediate post-war years. The founding in 1949 of two German states, with opposed political systems and differing ideologies concerning art and its role in society, marked the end of a unified collection. While the East Berlin Nationalgalerie could stay in its original building (following repairs), in West Berlin there was initially no dedicated space for the collection. Beginning in the late 1940s, the West Berlin authorities took strides to rebuild the collection by setting up a “Gallery of the 20th Century.” Further to this, part of the National Gallery’s original collection of nineteenth-century artwork, found in West Germany after the war, was absorbed the newly established Stiftung Preußischer Kulturbesitz (Prussian Cultural Heritage Foundation). As these two art collections were to be united, in 1962 Mies van der Rohe was commissioned to design a new museum building to house them both. In September 1965, the architect came to Berlin for the laying of the foundation stone. Two years later he also personally attended the most spectacular construction stage: the hydraulic raising into place of the gigantic steel roof. The building was opened on 15 September 1968 and bore the name Neue Nationalgalerie (New National Gallery). Its name signalled the idea of departing from the old and beginning a new chapter – the cultural rebirth of West Berlin.
  The building’s architectural structure has remained virtually unchanged ever since. The urban setting in which it stands, however, has undergone radical changes: the Staatsbibliothek (Berlin State Library) emerged at almost the same time as the Neue Nationalgalerie, on the opposite side of Potsdamer Strasse, and was followed by the Kammermusiksaal (chamber music hall) erected next to the Philharmonie, which by this point was already standing. These buildings were joined over time by a cluster of museums in the form of the Kulturforum, and, after German reunification, by the urban redevelopment of Potsdamer Platz.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221132/Profile%20Pictures%20of%20Museums/Neue_Nationalgalerie_m6glcl.jpg",
  hours: {
    "0": {start: "00:00", end: "00:00"},
    "1": {start: '10:00', end: '18:00'},
    "2": {start: '10:00', end: '18:00'},
    "3": {start: '10:00', end: '20:00'},
    "4": {start: '10:00', end: '18:00'},
    "5": {start: '10:00', end: '18:00'},
    "6": {start: '10:00', end: '18:00'}
    }
)

pergamonmuseum = Museum.create(
  name: 'Pergamonmuseum',
  address: "Bodestraße 1-3, 10178, Berlin",
  telephone: "030 266 424 242",
  website: 'https://www.smb.museum/museen-einrichtungen/pergamonmuseum/home/',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=14&ticketSelection=%5Bobject%20Object%5D',
  price: 19,
  price_reduced: 9.50,
  price_info: '19 Euro, reduced 9,50 Euro',
  opening_hours: "Tue-Sun 10-18, Thu 10-20",
  description: "One of the most popular attractions in Berlin, the Pergamon Museum is world famous for its archaeological holdings. The Pergamon, located on Museum Island, is really three museums in one – the Collection of Classical Antiquities (also on display in the Old Museum), the Museum of the Ancient Near East, and the Museum of Islamic Art.
  Ishtar Gate of Babylon
  The Pergamon Museum’s monumental highlights are truly breathtaking to behold. In the Collection of Classical Antiquities, the 2nd century BC Pergamon Altar, considered a Hellenistic masterpiece, has a frieze depicting a battle between the Gods and the Giants; the Market Gate of Miletus shows an important example of Roman architecture.
  The Museum of the Ancient Near East, which ranks among the world’s best collections of treasures from this region, is dominated by the imposing bright blue glazed-brick Ishtar Gate of Babylon from 6th century BC. The gate is decorated with dragons, lions and bulls, symbolizing the major gods of Babylon; a transparent back wall lets visitors see how the massive gate was reconstructed from fragments. Also notable in this collection is the façade of the throne hall of King Nebuchadnezzar, a reconstructed Neo-Assyrian palace from the 12th century BC, and artifacts from the earliest history of the written word.
  Museum of the Ancient Near East
  The Museum of Islamic Art was started in 1904 with a donation of precious carpets by Wilhelm von Bode. Such textiles still make up a major part of the exhibition, with colourful examples from Iran, Asia Minor, Egypt and the Caucuses on view. Highlights from the collection of 8th – 19th century Islamic art and craft include the 17th century Aleppo Zimmer, a vividly coloured panelled room from a merchant’s house in the Syrian city of Aleppo that is painted with Arabian and Persian verses and sayings and pictures of people, plants, and mythical beings.
  Renovations at the Pergamon Museum
  Please note that due to extensive renovations, the Pergamon Altar hall is currently closed to visitors. It is scheduled to reopen in late 2019. The other parts of the Pergamon Museum are not affected and stay open to the public during that time.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221132/Profile%20Pictures%20of%20Museums/Pergamonmuseum1_qkh3v1.jpg",
  hours: {
    "0": {start: "00:00", end: "00:00"},
    "1": {start: '10:00', end: '18:00'},
    "2": {start: '10:00', end: '18:00'},
    "3": {start: '10:00', end: '20:00'},
    "4": {start: '10:00', end: '18:00'},
    "5": {start: '10:00', end: '18:00'},
    "6": {start: '10:00', end: '18:00'}
    }
)

pergamon_panorama = Museum.create(
  name: 'Pergamonmuseum - Das Panorama',
  address: "Am Kupfergraben 2, 10117 Berlin",
  telephone: "030 266 424 242",
  website: 'https://www.smb.museum/museen-einrichtungen/pergamonmuseum-das-panorama/home/',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=78&ticketSelection=%5Bobject%20Object%5D',
  price: 19,
  price_reduced: 9.50,
  price_info: '19 Euro, reduced 9,50 Euro',
  opening_hours: "Tue-Sun 10-18",
  description: "The temporary exhibition building ""Pergamonmuseum. The Panorama"" was erected in November 2018 opposite the Bode-Museum, in the street Am Kupfergraben, based on Yadegar Asisi’s conceptual design and plans drafted by the architectural firm spreeformat architekten GmbH.
  The building will be in use for the exhibition project PERGAMON. Masterpieces from the Ancient Metropolis with a 360° Panorama by Yadegar Asisi until 2024. With the panorama, the Antikensammlung and Yadegar Asisi are shining a spotlight on the city of Pergamon in Roman times (ca. 129 AD). The project carries on from the huge success of the first panorama that Studio Asisi created in 2011 for the Pergamonmuseum for the exhibition Pergamon: Panorama of the Antique Metropolis.
  The ambitious construction project on the difficult building site across from Museumsinsel Berlin was made possible through the great commitment of the Interimsbau Pergamonmuseum Realisierungsgesellschaft mbH. This enterprise of the WOLFF GRUPPE Stuttgart/Essen contributed to the project’s realisation as well as its funding. Construction of this cultural space represented a major challenge for the Staatliche Museen zu Berlin and our partner, but it has now come to a successful conclusion. We are both convinced that the new building will be very popular with the public.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221490/Profile%20Pictures%20of%20Museums/Pergamonmuseum_Panorama1_ylxf9v.jpg",
  hours: {
    "0": {start: "00:00", end: "00:00"},
    "1": {start: '10:00', end: '18:00'},
    "2": {start: '10:00', end: '18:00'},
    "3": {start: '10:00', end: '18:00'},
    "4": {start: '10:00', end: '18:00'},
    "5": {start: '10:00', end: '18:00'},
    "6": {start: '10:00', end: '18:00'}
    }
)

scharf_gerstenberg = Museum.create(
  name: 'Sammlung Scharf-Gerstenberg',
  address: "Schloßstraße 70, 14059 Berlin",
  telephone: "030 266 424 242",
  website: 'https://www.smb.museum/museen-einrichtungen/sammlung-scharf-gerstenberg/home/',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=46&ticketSelection=%5Bobject%20Object%5D',
  price: 12,
  price_reduced: 6,
  price_info: '12,- Euro, red. 6,- Euro',
  opening_hours: "Tue-Fri 10-18, Sat-Sun 11-18",
  description: "The Sammlung Scharf-Gerstenberg traces common threads that weave through the evolution of the art of the fantastic, starting with works by Giovanni Battista Piranesi and Francisco de Goya, and culminating in the museum’s largest suite of works: the Surrealist art of such giants of 20th-century painting as Max Ernst and René Magritte.
  Like the Museum Berggruen situated across from it, the museum owes its existence to the efforts of private individuals and their passion for collecting art. Situated in Berlin-Charlottenburg in the west of the city, both exhibition venues belong to the Nationalgalerie and are joined by its other entities the Alte Nationalgalerie, Neue Nationalgalerie, Hamburger Bahnhof – Museum für Gegenwart – Berlin, and Friedrichswerdersche Kirche to form an organizational whole.
  After being converted by the architect Wils Ebert, the Egyptian Museum moved into the premises in 1967. Ebert joined the separate buildings of the eastern Stülerbau and stables by constructing a connecting corridor between them and it is here that the gate from the Temple of Kalabsha stands today, which was salvaged from its original site in Egypt before the filling of the Aswan Dam. The pillars from the Temple of Sahure are also preserved here, in the room of the same name. After the return of the Egyptian Museum to the Museumsinsel Berlin in 2005, the building was once again converted by the architectural practice Sunder-Plassmann. As well as exposing the original brickwork in the Stülerbau, former stables, and Sahure room, Sunder-Plassmann created a glass entrance hall. The Sammlung Scharf-Gerstenberg opened its doors to the public in summer 2008, featuring an exhibition consisting in a long-term group loan, lent for an agreed period of ten years. In 2018, the loan agreement was extended for another ten years.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221348/Profile%20Pictures%20of%20Museums/Sammlung_Scharf_Gerstenberg1_egzjwb.jpg",
  hours: {
    "0": {start: "00:00", end: "00:00"},
    "1": {start: '10:00', end: '18:00'},
    "2": {start: '10:00', end: '18:00'},
    "3": {start: '10:00', end: '18:00'},
    "4": {start: '10:00', end: '18:00'},
    "5": {start: '11:00', end: '18:00'},
    "6": {start: '11:00', end: '18:00'}
    }
)

kopenick = Museum.create(
  name: 'Schloss Köpenick',
  address: "Schlossinsel 1, 12557 Berlin",
  telephone: "030 266 424 242",
  website: 'https://www.smb.museum/museen-einrichtungen/schloss-koepenick/home/',
  ticket_url: 'https://shop.smb.museum/#/tickets/list?date=&museum_id=24&ticketSelection=%5Bobject%20Object%5D',
  price: 6,
  price_reduced: 3,
  price_info: '6,- Euro, red. 3,- Euro',
  opening_hours: "Tue to Sun 11-17, Wed 11-18, Mon closed",
  description: "Beautifully situated on the banks of the river Dahme, the Baroque palace of Köpenick houses treasures from the Kunstgewerbemuseum (Museum of Decorative Arts), complementing the museum’s main exhibition space at the Kulturforum.
  The palace complex, never fully completed, is located on a manmade island on the outskirts of the old town centre of Köpenick. The main building was constructed between 1677 and 1690 on the site of an earlier hunting palace of the Brandenburg electors to designs by architects Rutger van Langervelt and Johann Arnold Nering. It was commissioned by the Hohenzollern prince-elector Friedrich (later Friedrich III Elector of Brandenburg and Friedrich I King of Prussia). The ensemble includes a historical gateway, a chapel and an old utilities building that today houses storage rooms, a conservation studio and a café.
  Schloss Köpenick (Köpenick Palace) has been used as an exhibition space by the Kunstgewerbemuseum since 1963. Before the reunification of Germany, artworks located in the east of Berlin were put on display here. The buildings on the island were later fully renovated and since 2004 have housed the permanent exhibition ""RoomArt"", focussing on the decorative arts of the Renaissance, Baroque and Rococo periods. Spread across three floors, the museum presents outstanding masterworks in interior design from the 16th to 18th centuries.
  A further noteworthy feature of the palace is that the original Baroque plasterwork has survived intact in almost all of its rooms. On the basement level, an exhibition of archaeological findings documents the history of settlement and building on the island of Schloss Köpenick.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221132/Profile%20Pictures%20of%20Museums/Schloss_Ko%CC%88penick1_r0mjoe.jpg",
  hours: {
    "0": {start: "00:00", end: "00:00"},
    "1": {start: '11:00', end: '17:00'},
    "2": {start: '11:00', end: '18:00'},
    "3": {start: '11:00', end: '17:00'},
    "4": {start: '11:00', end: '17:00'},
    "5": {start: '11:00', end: '17:00'},
    "6": {start: '11:00', end: '17:00'}
    }
)

wall_museum = Museum.create(
  name: 'The Wall Museum at the East Side Gallery',
  address: "Mühlenstraße 78, 10243 Berlin",
  telephone: "03094512900",
  website: 'http://www.thewallmuseum.com/',
  ticket_url: 'https://www.berlin.de/en/tickets/leisure/the-wall-museum-an-der-east-side-gallery-tageskarte-0cd3a62a-e6b1-41c1-be44-aa907866bded/ticketshop/',
  price: 10,
  price_reduced: 5,
  price_info: '10,- Euro, red. 5,- Euro',
  opening_hours: "Daily from 10:00 am., last admission is at 18:30.",
  description: "The Wall Museum Berlin - Exciting, thrilling and emotionalThe exhibition covers an audiovisual arc from the division of Germany and the construction of the Berlin Wall, through the Cold War and the fate of the Wall victims, to the significant events that brought about the fall of the Wall.A must for all those who want to understand one of the most dramatic historical events in German history.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221532/Profile%20Pictures%20of%20Museums/The_Wall_Museum_1_kcthvt.jpg",
  hours: {
    "0": {start: '10:00', end: '19:00'},
    "1": {start: '10:00', end: '19:00'},
    "2": {start: '10:00', end: '19:00'},
    "3": {start: '10:00', end: '19:00'},
    "4": {start: '10:00', end: '19:00'},
    "5": {start: '10:00', end: '19:00'},
    "6": {start: '10:00', end: '19:00'}
    }
)

ddr_museum = Museum.create(
  name: 'DDR Museum',
  address: "Karl-Liebknecht-Str. 1, 10178 Berlin",
  telephone: "030847123731",
  website: 'https://www.ddr-museum.de/en',
  ticket_url: 'https://tickets.ddr-museum.de/#/tickets',
  price: 9,
  price_reduced: 6,
  price_info: '9,- Euro, red. 6,- Euro',
  opening_hours: "Daily from 10:00 am., last admission is at 18:30.",
  description: "The DDR Museum provides a unique visitor experience, making it one of Berlin’s most popular museums. Engage all of your senses to enjoy an immersive experience of everyday life in the former East Germany. Covering a range of topics based on sound academic research – everyday life, the Berlin Wall, the Stasi and much more – our exhibition encourages its visitors to touch, feel and interact, so as to gain a fun and rich understanding of the past. Explore all aspects of life behind the Berlin Wall and the workings of the state – the DDR at a glance.",
  photo_url: "https://res.cloudinary.com/dpi7g4swb/image/upload/v1646221131/Profile%20Pictures%20of%20Museums/DDR_Museum1_pu30vq.jpg",
  hours: {
    "0": {start: '10:00', end: '19:00'},
    "1": {start: '10:00', end: '19:00'},
    "2": {start: '10:00', end: '19:00'},
    "3": {start: '10:00', end: '19:00'},
    "4": {start: '10:00', end: '19:00'},
    "5": {start: '10:00', end: '19:00'},
    "6": {start: '10:00', end: '19:00'}
    },
  )
ddr_museum.save

# puts "Creating ratings..... "

Rating.create!(
  user: user_ana,
  museum: altes_museum,
  title: "Great experience",
  comment: "The Altes Museum is an excellent museum to visit. It has a very interesting collection on the Greeks and Romans. For those who like coins, the museum has a small wing intended only for the exhibition of coins used in BC and AD times.",
  stars: 5
)
Rating.create!(
  user: user_malvi,
  museum: altes_museum,
  title: "Strongly recommend",
  comment: "The square where the museum is located is full of things to do, besides the Cathedral and the river it is possible to visit the garden or just stay on the lawn during the summer reading a book.",
  stars: 4
)

Rating.create!(
  user: user_leo,
  museum: altes_museum,
  title: "Disappointed",
  comment: "Very poor and expensive. You have much much much bigger museus in London and they are free. Don't waste your money here.",
  stars: 1
)

Rating.create!(
  user: user_malvi,
  museum: altes_museum,
  title: "Satisfactory, that's all",
  comment: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.",
  stars: 4
)

Rating.create!(
  user: user_barbara,
  museum: altes_museum,
  title: "An unforgettable journey!",
  comment: "The Ancient Museum (Altes Museum) is the largest and most important museum in the world in the field of ancient art from Greece, Rome and Etruria",
  stars: 5
)



Museum.all.each do |museum_instance|
  Chatroom.create!(museum: museum_instance)
end
puts "#{Chatroom.count} Chatrooms were created!"

puts "Creating Topics..."
Topic.create(name: "19th century to 1945")
Topic.create(name: "History")
Topic.create(name: "National Socialism")
Topic.create(name: "Ancient Cultures, Archaeology")
Topic.create(name: "5th to 18th Century")
Topic.create(name: "Architecture, Design")
Topic.create(name: "Fine Arts")
Topic.create(name: "Modernism")
Topic.create(name: "16th to 19th Century")
Topic.create(name: "Contemporary Arts")
Topic.create(name: "Photography")
Topic.create(name: "Post-1945")
Topic.create(name: "Ancient History to the Middle Ages")
Topic.create(name: "Berlin")
Topic.create(name: "Palace")
Topic.create(name: "Film, T–heatre, Literature, Music")
Topic.create(name: "Memorials")
Topic.create(name: "The German Division")
Topic.create(name: "1945 to the present")


puts "Creating MuseumsTopics..."
MuseumsTopic.create(topic_id: 1, museum_id: 1)
MuseumsTopic.create(topic_id: 1, museum_id: 4)
MuseumsTopic.create(topic_id: 1, museum_id: 6)
MuseumsTopic.create(topic_id: 1, museum_id: 18)

MuseumsTopic.create(topic_id: 2, museum_id: 1)
MuseumsTopic.create(topic_id: 2, museum_id: 20)
MuseumsTopic.create(topic_id: 2, museum_id: 21)

MuseumsTopic.create(topic_id: 3, museum_id: 1)
MuseumsTopic.create(topic_id: 3, museum_id: 2)
MuseumsTopic.create(topic_id: 3, museum_id: 4)
MuseumsTopic.create(topic_id: 3, museum_id: 5)
MuseumsTopic.create(topic_id: 3, museum_id: 6)
MuseumsTopic.create(topic_id: 3, museum_id: 7)
MuseumsTopic.create(topic_id: 3, museum_id: 10)
MuseumsTopic.create(topic_id: 3, museum_id: 11)
MuseumsTopic.create(topic_id: 3, museum_id: 12)
MuseumsTopic.create(topic_id: 3, museum_id: 13)
MuseumsTopic.create(topic_id: 3, museum_id: 14)
MuseumsTopic.create(topic_id: 3, museum_id: 15)
MuseumsTopic.create(topic_id: 3, museum_id: 16)
MuseumsTopic.create(topic_id: 3, museum_id: 17)
MuseumsTopic.create(topic_id: 3, museum_id: 18)
MuseumsTopic.create(topic_id: 3, museum_id: 19)
MuseumsTopic.create(topic_id: 3, museum_id: 20)
MuseumsTopic.create(topic_id: 3, museum_id: 21)

MuseumsTopic.create(topic_id: 4, museum_id: 2)
MuseumsTopic.create(topic_id: 4, museum_id: 4)
MuseumsTopic.create(topic_id: 4, museum_id: 6)
MuseumsTopic.create(topic_id: 4, museum_id: 13)
MuseumsTopic.create(topic_id: 4, museum_id: 14)
MuseumsTopic.create(topic_id: 4, museum_id: 16)
MuseumsTopic.create(topic_id: 4, museum_id: 17)

MuseumsTopic.create(topic_id: 5, museum_id: 3)
MuseumsTopic.create(topic_id: 5, museum_id: 4)
MuseumsTopic.create(topic_id: 5, museum_id: 6)

MuseumsTopic.create(topic_id: 6, museum_id: 3)
MuseumsTopic.create(topic_id: 6, museum_id: 5)
MuseumsTopic.create(topic_id: 6, museum_id: 7)
MuseumsTopic.create(topic_id: 6, museum_id: 19)

MuseumsTopic.create(topic_id: 7, museum_id: 1)
MuseumsTopic.create(topic_id: 7, museum_id: 3)
MuseumsTopic.create(topic_id: 7, museum_id: 4)
MuseumsTopic.create(topic_id: 7, museum_id: 6)
MuseumsTopic.create(topic_id: 7, museum_id: 9)
MuseumsTopic.create(topic_id: 7, museum_id: 10)
MuseumsTopic.create(topic_id: 7, museum_id: 12)
MuseumsTopic.create(topic_id: 7, museum_id: 13)
MuseumsTopic.create(topic_id: 7, museum_id: 14)
MuseumsTopic.create(topic_id: 7, museum_id: 15)
MuseumsTopic.create(topic_id: 7, museum_id: 16)


MuseumsTopic.create(topic_id: 8, museum_id: 10)
MuseumsTopic.create(topic_id: 8, museum_id: 15)
MuseumsTopic.create(topic_id: 8, museum_id: 18)

MuseumsTopic.create(topic_id: 9, museum_id: 9)
MuseumsTopic.create(topic_id: 9, museum_id: 13)

MuseumsTopic.create(topic_id: 10, museum_id: 5)

MuseumsTopic.create(topic_id: 11, museum_id: 5)
MuseumsTopic.create(topic_id: 11, museum_id: 12)

MuseumsTopic.create(topic_id: 12, museum_id: 5)
MuseumsTopic.create(topic_id: 12, museum_id: 12)
MuseumsTopic.create(topic_id: 12, museum_id: 15)

MuseumsTopic.create(topic_id: 13, museum_id: 13)
MuseumsTopic.create(topic_id: 13, museum_id: 14)

MuseumsTopic.create(topic_id: 14, museum_id: 20)
MuseumsTopic.create(topic_id: 14, museum_id: 21)

MuseumsTopic.create(topic_id: 15, museum_id: 19)

MuseumsTopic.create(topic_id: 16, museum_id: 11)

MuseumsTopic.create(topic_id: 17, museum_id: 20)

MuseumsTopic.create(topic_id: 18, museum_id: 20)
MuseumsTopic.create(topic_id: 18, museum_id: 21)

MuseumsTopic.create(topic_id: 19, museum_id: 20)
MuseumsTopic.create(topic_id: 19, museum_id: 21)

puts "Done!"
