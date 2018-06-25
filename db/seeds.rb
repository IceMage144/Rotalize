################################################################################
# Banco de Dados                                                               #
################################################################################

################################################################################
# Usuarios                                                                     #
################################################################################
users = User.create([
  {
    id:                    0,
    name:                  'admin',
    email:                 'admin@rotalize.com',
    password:              'admin123',
    password_confirmation: 'admin123',
    img:                   ''
  },
  {
    name:                  'Goku',
    email:                 'goku@rotalize.com',
    password:              'kakaroto',
    password_confirmation: 'kakaroto',
    img:                   'https://i0.wp.com/www.fatosdesconhecidos.com.br/wp-content/uploads/2017/11/goku.jpg?resize=900,420'
  }
])

################################################################################
# Locais                                                                       #
################################################################################
Local.create([
  {
    id:       0,
    user_id:  users[0].id,
    name:     'Paris',
    country:  'França',
    currency: 'Euro (€)',
    img:      'https://a1.odistatic.net/images/landingpages/vacation/1920x800/paris_1920x800.jpg'
  },
  {
    id:       1,
    user_id:  users[0].id,
    name:     'Londres',
    country:  'Inglaterra',
    currency: 'Libra (£)',
    img:      'https://travel.home.sndimg.com/content/dam/images/travel/fullset/2015/05/28/big-ben-london-england.jpg.rend.hgtvcom.1280.960.suffix/1491582155388.jpeg'
  },
  {
    id:        2,
    user_id:  users[0].id,
    name:     'Bruxelas',
    country:  'Bélgica',
    currency: 'Euro (€)',
    img:      'https://3.bp.blogspot.com/-L1WeiqhO9w8/UykJm9yHSeI/AAAAAAAAUcc/tRrdDhJIFS0/s1600/Grand-Place-Bruxelas-Tapete.jpg'
  },
  {
    id:       3,
    user_id:  users[0].id,
    name:     'Amsterdã',
    country:  'Holanda',
    currency: 'Euro (€)',
    img:      'http://www.noisiamofuturo.it/wp-content/uploads/2017/06/AMSTERDAM-Netherlands-1_01.jpg'
  }
])

################################################################################
# Lugares                                                                      #
################################################################################
Place.create([
################################################################################
# Paris - Pontos Turisticos                                                    #
################################################################################
  {
    id:           0,
    local_id:     0,
    placetype:    0,
    name:         'Arco do Triunfo',
    description:  'Monumento no final da Champs-Élysées',
    address:      'Place Charles de Gaulle, 75008',
    openinghours: '10:00 - 23:00',
    price:        '12€',
    img:          'http://www.vounajanela.com/wp-content/uploads/2017/12/arco-do-triunfo--1050x599.jpg'
  },
  {
    id:           1,
    local_id:     0,
    placetype:    0,
    name:         'Basílica de Sacré-Cœur Paris',
    description:  'Templo da Igreja Católica',
    address:      '35 Rue du Chevalier de la Barre, 75018',
    openinghours: '06:00 - 22:30',
    price:        '',
    img:          'https://3.bp.blogspot.com/-duEmpfeatvc/Uu0s1_h4DqI/AAAAAAAATkM/48Cy4-dyey4/s1600/Bas%C3%ADlica-de-Sacr%C3%A9-Coeur-Paris.jpg'
  },
  {
    id:           2,
    local_id:     0,
    placetype:    0,
    name:         'Catacumbas',
    description:  'Caverna subterrânea cheia de caveiras',
    address:      'Avenue du Colonel Henri Rol-Tanguy, 1, 75014',
    openinghours: '10:00 - 20:30',
    price:        '12€',
    img:          'https://1.bp.blogspot.com/-ksa6tac9law/Ut_leK-UOWI/AAAAAAAAAH8/JXSEJR08WvQ/s1600/Catacumbas-de-Paris-Fran%C3%A7a-France-3.jpg'
  },
  {
    id:           3,
    local_id:     0,
    placetype:    0,
    name:         'Catedral de Notre Dame',
    description:  'Uma das catedrais góticas mais antigas do mundo (Contruída entre 1163 e 1245)',
    address:      '6 Parvis Notre-Dame - Pl. Jean-Paul II, 75004',
    openinghours: '08:00 - 18:45',
    price:        '',
    img:          'https://apaixonadaporarquitetura.files.wordpress.com/2014/06/notre-dame-amantes-de-belas-imagens-blogspot.jpg'
  },
  {
    id:           4,
    local_id:     0,
    placetype:    0,
    name:         'Champs-Élysées',
    description:  'Avenida famosa com várias lojas e restaurantes',
    address:      'Champs-Élysées, 75008',
    openinghours: '',
    price:        '',
    img:          'https://st.depositphotos.com/1001939/2198/i/950/depositphotos_21987233-stock-photo-the-champs-elysees-and-the.jpg'
  },
  {
    id:           5,
    local_id:     0,
    placetype:    0,
    name:         'Disneyland',
    description:  'Disneyland Park e Walt Disney Studios Park',
    address:      '77777 Marne-la-Vallée',
    openinghours: '10:00 - 20:00',
    price:        '150€',
    img:          'https://reservation.parisinfo.com/InfoliveImages/n015031.jpg?mode=crop&width=640&height=412&scale=both'
  },
  {
    id:           6,
    local_id:     0,
    placetype:    0,
    name:         'Igreja Madeleine',
    description:  'Parece um templo grego',
    address:      'Place de la Madeleine, 75008, ao final da Rue Royale',
    openinghours: '09:30 - 19:00',
    price:        '',
    img:          'https://1.bp.blogspot.com/-tCGAq49SmSo/WV57kSmHyhI/AAAAAAAAGx4/dAVtPBVVchoKf1aQmd_xpf1ZGPAX6DpagCLcBGAs/s640/igreja-madeleine.jpg'
  },
  {
    id:           7,
    local_id:     0,
    placetype:    0,
    name:         'Igreja Saint Sulpice',
    description:  'Igreja que aparece no "Código da Vince"',
    address:      '2 Rue Palatine, 75006',
    openinghours: '07:30 - 19:30',
    price:        '',
    img:          'https://cdn.civitatis.com/francia/paris/galeria/thumbs/iglesia-saint-sulpice.jpg'
  },
  {
    id:           8,
    local_id:     0,
    placetype:    0,
    name:         'Jardim de Luxemburgo',
    description:  'Rodeia o palácio que é sede do Senado Francês',
    address:      'Rue Auguste Comte, 75006',
    openinghours: '',
    price:        '',
    img:          'https://2.bp.blogspot.com/-pGNxhqePQwg/WnIEY6pKwaI/AAAAAAAAcjc/jqprLRUeuHkl_3oyrA-agiNJkxqtiCzEQCLcBGAs/s640/Jaridm%2Bde%2BLuxemburgo%2BParis.jpg'
  },
  {
    id:           9,
    local_id:     0,
    placetype:    0,
    name:         'Jardim de Tuileries',
    description:  'Jardim criado no século XVI',
    address:      '113 Rue de Rivoli, 75001',
    openinghours: '',
    price:        '',
    img:          'https://en.parisinfo.com/var/otcp/sites/images/node_43/node_51/node_77884/node_77888/jardin-des-tuileries-fleurs-et-vue-sur-le-louvre-%7C-630x405-%7C-%C2%A9-fotolia-tanya/11884894-1-fre-FR/Jardin-des-Tuileries-Fleurs-et-vue-sur-le-Louvre-%7C-630x405-%7C-%C2%A9-Fotolia-Tanya.jpg'
  },
  {
    id:           10,
    local_id:     0,
    placetype:    0,
    name:         'Ópera Garnier',
    description:  'Lugar que inspirou a obra "O Fantasma da Ópera"',
    address:      '8 Rue Scribe, 75009',
    openinghours: '10:00 - 17:00',
    price:        '10€',
    img:          'https://www.epochtimes.com.br/assets/uploads/2014/04/tr_teatro_opera_de_paris-900-795x447.jpg'
  },
  {
    id:           11,
    local_id:     0,
    placetype:    0,
    name:         'Palácio de Versalhes',
    description:  'Sede do poder político entre 1682 e 1789',
    address:      'Place d\'Armes, 78000 Versailles',
    openinghours: '09:00 - 18:30',
    price:        '15€',
    img:          'https://i0.wp.com/trabalhandonoexterior.com.br/wp-content/uploads/2018/01/palacio-de-versalhes-o-que-e-quanto-custa-onde-fica.jpeg?fit=755%2C433'
  },
  {
    id:           12,
    local_id:     0,
    placetype:    0,
    name:         'Panteão',
    description:  'Monumento do final do século XVIII',
    address:      'Place du Panthéon, 75005',
    openinghours: '10:00 - 18:00',
    price:        '8,50€',
    img:          'https://1.bp.blogspot.com/-uy4jpc47jMs/VYi1Y8zPTvI/AAAAAAAABEo/39QixNHeydU/s1600/Panteao.jpg'
  },
  {
    id:           13,
    local_id:     0,
    placetype:    0,
    name:         'Ponte Alexandre III',
    description:  'Ponte mais bonita da cidade',
    address:      'Pont Alexandre III, 75008',
    openinghours: '',
    price:        '',
    img:          'https://en.parisinfo.com/var/otcp/sites/images/node_43/node_51/node_77884/node_77889/pont-alexandre-iii-cand%C3%A9labres-%7C-630x405-%7C-%C2%A9-fotolia-rdnzl/11885326-1-fre-FR/Pont-Alexandre-III-Cand%C3%A9labres-%7C-630x405-%7C-%C2%A9-Fotolia-rdnzl.jpg'
  },
  {
    id:           14,
    local_id:     0,
    placetype:    0,
    name:         'Praça da Bastilha',
    description:  'Onde ocorreu a Queda da Bastilha (1789)',
    address:      'Place de la Bastille, 75011',
    openinghours: '',
    price:        '',
    img:          'http://photos.wikimapia.org/p/00/02/65/75/43_big.jpg'
  },
  {
    id:           15,
    local_id:     0,
    placetype:    0,
    name:         'Praça da Concórdia',
    description:  'Local onde ocorreram várias decaptações durante a Revolução Francesa',
    address:      'Place de la Concorde, 75008 ',
    openinghours: '',
    price:        '',
    img:          'https://ideiasnamala.files.wordpress.com/2011/09/dsc08621.jpg?resize=640%2C480'
  },
  {
    id:           16,
    local_id:     0,
    placetype:    0,
    name:         'Sainte Chapelle',
    description:  'Capela Gótica com vitrais',
    address:      'Boulevard du Palais, 8, Île de la Cité, 75001',
    openinghours: '09:00 - 18:00',
    price:        '10€',
    img:          'https://images.musement.com/cover/0001/46/la-sainte-chapelle_header-45736.jpeg?w=600&h=315&crop=edges'
  },
  {
    id:           17,
    local_id:     0,
    placetype:    0,
    name:         'Torre Eiffel',
    description:  'Ícone da cidade',
    address:      'Parc du Champ de Mars, 5 Avenue Anatole, 75007',
    openinghours: '09:00 - 00:00',
    price:        '17€',
    img:          'https://abrilveja.files.wordpress.com/2016/05/alx_torre_eiffel_original.jpeg'
  },
################################################################################
# Paris - Museus                                                               #
################################################################################
  {
    id:           18,
    local_id:     0,
    placetype:    1,
    name:         'Museu des Invalides',
    description:  '(Musée de l\'Armée) Lá está o túmulo de Napoleão Bonaparte',
    address:      '129 Rue de Grenelle, 75007',
    openinghours: '10:00 - 18:00',
    price:        '11€',
    img:          'https://en.parisinfo.com/var/otcp/sites/images/media/1.-photos/02.-sites-culturels-630-x-405/hotel-des-invalides-esplanade-630x405-c-thinkstock/35967-1-fre-FR/Hotel-des-Invalides-esplanade-630x405-C-Thinkstock.jpg'
  },
  {
    id:           19,
    local_id:     0,
    placetype:    1,
    name:         'Museu do Louvre',
    description:  'Um dos museus mais visitados do mundo',
    address:      'Rue de Rivoli, 75001',
    openinghours: '09:00 - 18:00',
    price:        '15€',
    img:          'http://cursos.zarinhaead.com.br/media/zarinha/curso/7782EF5A-057C-11E8-A3B6-F23C9150782F.jpg'
  },
  {
    id:           20,
    local_id:     0,
    placetype:    1,
    name:         'Museu d\'Órsay',
    description:  'Localizado em uma antiga estação de trem',
    address:      '1 Rue de la Légion d\'Honneur, 75007',
    openinghours: '09:30 - 18:00',
    price:        '12€',
    img:          'https://aws-tiqets-cdn.imgix.net/images/content/56d25a2e7a954d8481302a8dbfbce9ae.jpg?auto=format&fit=crop&ixlib=python-1.1.2&q=25&s=52766ad5b8b3195fb4f659cd167cb2a9&w=330&h=330&dpr=1'
  },
################################################################################
# Paris - Lojas                                                                #
################################################################################
  {
    id:           21,
    local_id:     0,
    placetype:    2,
    name:         'Galeries Lafayette',
    description:  'Loja de departamento',
    address:      '40 Boulevard Haussman, 75009',
    openinghours: '09:30 - 20:30',
    price:        '',
    img:          'https://static.glamurama.uol.com.br/2017/10/tamanho-galeries-1024x627.jpg'
  },
  {
    id:           22,
    local_id:     0,
    placetype:    2,
    name:         'Outlet La Vallée Village',
    description:  'Outlet perto da Disneyland',
    address:      '3 Cours de la Garonne, 77700',
    openinghours: '10:00 - 19:00',
    price:        '',
    img:          'https://4.bp.blogspot.com/-kKvGb6-boxo/WAaH0f9dZII/AAAAAAAACkk/BCQxt5qXV5kBgrs63YvA--nr4zXfHEXrQCLcB/s1600/paris-outlet-franc%25CC%25A7a.jpg'
  },
  {
    id:           23,
    local_id:     0,
    placetype:    2,
    name:         'Shopping Les Quatre Temps',
    description:  'Do lado dele fica o Grande Arco de la Défense',
    address:      '15, Parvis de La Défense, 92092 ',
    openinghours: '09:00 - 20:00',
    price:        '',
    img:          'https://2.bp.blogspot.com/-7oaLZfCZNBA/VQtLZxeKniI/AAAAAAAAGGE/wQ1NRJs5tNQ/s1600/quatre-temps-paris.jpg'
  },
################################################################################
# Paris - Restaurates                                                          #
################################################################################
  {
    id:           24,
    local_id:     0,
    placetype:    3,
    name:         'Hard Rock Cafe Paris',
    description:  'Restaurante Rock',
    address:      '14, Boulevard Montmartre, 75009',
    openinghours: '11:30 - 23:30',
    price:        '',
    img:          'https://u.tfstatic.com/restaurant_photos/718/10718/169/612/hard-rock-cafe-le-meilleur-restaurant-americain-a-paris-12bbb.jpg'
  },
################################################################################
# Londres - Pontos Turisticos                                                  #
################################################################################
  {
    id:           25,
    local_id:     1,
    placetype:    0,
    name:         'Abadia de Westminster',
    description:  'Local de coroação da monarquia britânica',
    address:      '20 Deans Yd',
    openinghours: '09:30 - 15:30',
    price:        '£20',
    img:          'https://thumbs.dreamstime.com/b/westminster-abbey-london-25597513.jpg'
  },
  {
    id:           26,
    local_id:     1,
    placetype:    0,
    name:         'Big Ben (Palácio de Westminster)',
    description:  'Relógio famoso no Parlamento do Reino Unido',
    address:      'Westminster',
    openinghours: '',
    price:        '',
    img:          'http://lego.brickinstructions.com/10000/10253/002.jpg'
  },
  {
    id:           27,
    local_id:     1,
    placetype:    0,
    name:         'London Eye',
    description:  'Terceira maior roda gigante do mundo, com 135 metros de altura',
    address:      'Lambeth',
    openinghours: '10:00 - 20:30',
    price:        '£22,45',
    img:          'https://aws-tiqets-cdn.imgix.net/images/content/95ca2a3254ae4b0e8f277cfaa57f2530.jpg?auto=format&fit=crop&ixlib=python-1.1.2&q=25&s=49df34fb225400660a80d8c153ac1bc4&w=330&h=330&dpr=1'
  },
  {
    id:           28,
    local_id:     1,
    placetype:    0,
    name:         'London Tower',
    description:  'Castelo construído em 1078',
    address:      'St Katharine\'s & Wapping',
    openinghours: '09:00 - 16:30',
    price:        '£21,50',
    img:          'https://www.telegraph.co.uk/content/dam/Travel/2017/September/tower-of-london-GETTY.jpg?imwidth=480'
  },
  {
    id:           29,
    local_id:     1,
    placetype:    0,
    name:         'Meridiano de Greenwich (Royal Observatory)',
    description:  'Linha meridional histórica que demarca os hemisférios ocidental e oriental',
    address:      'Blackheath Ave',
    openinghours: '10:00 - 17:00',
    price:        '£9,50',
    img:          'https://media.timeout.com/images/102508545/630/472/image.jpg'
  },
  {
    id:           30,
    local_id:     1,
    placetype:    0,
    name:         'Palácio de Buckingham',
    description:  'Casa da Rainha Elizabeth II',
    address:      'Westminster',
    openinghours: '',
    price:        '',
    img:          'http://www.caminhosdelondres.com.br/wp-content/uploads/2017/04/caminhos-de-londres-buckingham-palace_1088x783.jpg'
  },
  {
    id:           31,
    local_id:     1,
    placetype:    0,
    name:         'St. Paul\'s Cathedral',
    description:  'Catedral Anglicana',
    address:      'Saint Paul\'s Churchyard',
    openinghours: '08:30 - 16:00',
    price:        '£18',
    img:          'https://ibstours.com/wp-content/uploads/2017/09/st-pauls-cathedral.jpeg'
  },
  {
    id:           32,
    local_id:     1,
    placetype:    0,
    name:         'Tower Bridge',
    description:  'Ponte elevadiça',
    address:      'Tower Bridge Rd',
    openinghours: '',
    price:        '',
    img:          'https://img.posterlounge.de/images/wbig/poster-tower-bridge-langzeitbelichtung-1828261.jpg'
  },
################################################################################
# Londres - Museus                                                             #
################################################################################
  {
    id:           33,
    local_id:     1,
    placetype:    1,
    name:         'Imperial War Museum',
    description:  'Museu das guerras mundiais',
    address:      'Lambeth Road',
    openinghours: '10:00 - 18:00',
    price:        '',
    img:          'https://media.timeout.com/images/102998429/630/472/image.jpg'
  },
  {
    id:           34,
    local_id:     1,
    placetype:    1,
    name:         'Madame Tussauds',
    description:  'O primeiro Museu da franquia',
    address:      'Marylebone Rd',
    openinghours: '10:00 - 16:00',
    price:        '£22',
    img:          'https://www.londontheatre.co.uk/sites/default/files/xMadame-Tussauds-Priority,P20Entrance-4-21564.jpg.pagespeed.ic.FFxKBSIsNi.png'
  },
  {
    id:           35,
    local_id:     1,
    placetype:    1,
    name:         'Museu Britânico',
    description:  'Primeiro museu nacional público do mundo. Lá está a Pedra de Rosetta',
    address:      'Great Russell St',
    openinghours: '10:00 - 17:00',
    price:        '',
    img:          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/British_Museum_from_NE_2.JPG/250px-British_Museum_from_NE_2.JPG'
  },
  {
    id:           36,
    local_id:     1,
    placetype:    1,
    name:         'Museu de História Natural',
    description:  'Museu de animais e fenômenos naturais com exposições interativas e dinossauros animatrônicos',
    address:      'Cromwell Rd, Kensington',
    openinghours: '10:00 - 17:50',
    price:        '',
    img:          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Natural_History_Museum_London_Jan_2006.jpg/800px-Natural_History_Museum_London_Jan_2006.jpg'
  },
  {
    id:           37,
    local_id:     1,
    placetype:    1,
    name:         'National Gallery',
    description:  'Uma das mais importantes galerias de arte do mundo',
    address:      'Trafalgar Square',
    openinghours: '10:00 - 18:00',
    price:        '',
    img:          'https://pbs.twimg.com/media/DGdXX7uUAAASxm3.jpg'
  },
  {
    id:           38,
    local_id:     1,
    placetype:    1,
    name:         'Warner Bros Studios - Harry Potter',
    description:  'Estúdio usado nas filmagens dos filmes do Harry Potter',
    address:      'Studio Tour Drive, Watford',
    openinghours: '08:00 - 18:00',
    price:        '£41',
    img:          'http://www.toysworldreviews.com/wp-content/uploads/2016/05/feature-warnerbrosstudiotour-730x410.jpg'
  },
################################################################################
# Londres - Lojas                                                              #
################################################################################
  {
    id:           39,
    local_id:     1,
    placetype:    2,
    name:         'Camden Town',
    description:  'Bairro com várias lojas legais (Roupas, acessórios)',
    address:      'Camden Town',
    openinghours: '',
    price:        '',
    img:          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWN3ITBcqYHUaUKB5WXaii-snNxwzacw71yxOX3Y3FtKyzjrtgow'
  },
  {
    id:           40,
    local_id:     1,
    placetype:    2,
    name:         'Hamleys',
    description:  'A maior loja de brinquedos do mundo',
    address:      '188-196 Regent St, Soho',
    openinghours: '10:00 - 21:00',
    price:        '',
    img:          'http://3.bp.blogspot.com/-1CZusTiuckY/Vb50fgnSlpI/AAAAAAAADDE/i9K5xJFXRrI/s1600/Hamleys.jpg'
  },
  {
    id:           41,
    local_id:     1,
    placetype:    2,
    name:         'It\'s Only Rock & Roll',
    description:  'Loja de rock',
    address:      '230 Baker St',
    openinghours: '10:00 - 18:30',
    price:        '',
    img:          'http://www.picturesofengland.com/img/L/1174932.jpg'
  },
  {
    id:           42,
    local_id:     1,
    placetype:    2,
    name:         'London Beatles Store',
    description:  'Loja dos Beatles',
    address:      '231-233 Baker St',
    openinghours: '10:00 - 18:30',
    price:        '',
    img:          'https://media-cdn.tripadvisor.com/media/photo-s/0e/6d/91/1f/london-beatles-store.jpg'
  },
  {
    id:           43,
    local_id:     1,
    placetype:    2,
    name:         'M&M\'s World',
    description:  'Loja de doce M&M',
    address:      '10 Wardour St, Leicester Square',
    openinghours: '09:00 - 00:00',
    price:        '',
    img:          'https://media-cdn.sygictraveldata.com/media/800x600/612664395a40232133447d33247d3832363131343438'
  },
################################################################################
# Londres - Restaurantes                                                       #
################################################################################
  {
    id:           44,
    local_id:     1,
    placetype:    3,
    name:         'Hard Rock Cafe London',
    description:  'Restaurante Rock',
    address:      '150 Old Park Ln, Mayfair',
    openinghours: '11:30 - 00:00',
    price:        '',
    img:          'https://cdn.londonandpartners.com/asset/9da6b10456fc0b5c2b711a4934ed74b4.jpg'
  },
################################################################################
# Londres - Outros                                                             #
################################################################################
  {
    id:           45,
    local_id:     1,
    placetype:    4,
    name:         'The Beatles - Abbey Road',
    description:  'Rua da faixa de pedestre que os Beatles atravessaram, capa do álbum "Abbey Road" (1969)',
    address:      '2 Abbey Rd',
    openinghours: '',
    price:        '',
    img:          'https://mr.comingsoon.it/imgdb/Musica/Album/107.jpg'
  },
  {
    id:           46,
    local_id:     1,
    placetype:    4,
    name:         'The Beatles - Rooftop Concert',
    description:  'Prédio que os Beatles tocaram no topo em 1969 (Antiga sede da Apple Corps)',
    address:      '3 Savile Row',
    openinghours: '',
    price:        '',
    img:          'https://image.tmdb.org/t/p/w533_and_h300_bestv2/hzUU6p40UrCBnvYyJ7jryEiXuan.jpg'
  },
  {
    id:           47,
    local_id:     1,
    placetype:    4,
    name:         'David Bowie - Ziggy Stardust',
    description:  'Rua do álbum "The Rise and Fall of Ziggy Stardust and the Spiders from Mars" do David Bowie (1972)',
    address:      '23 Heddon Street',
    openinghours: '',
    price:        '',
    img:          'https://images-na.ssl-images-amazon.com/images/I/91WJORzpHML._SL1500_.jpg'
  },
  {
    id:           48,
    local_id:     1,
    placetype:    4,
    name:         'King\'s Cross Station (Plataforma 9¾)',
    description:  'Passagem secreta para pegar o trem para Hogwarts (Harry Potter)',
    address:      'Estação King\'s Cross',
    openinghours: '',
    price:        '',
    img:          'http://rollingstone.uol.com.br/static/media/images/medium/2013/01/04/img-1011176-plataforma-9-34.jpg'
  },
  {
    id:           49,
    local_id:     1,
    placetype:    4,
    name:         'Pink Floyd - Animals',
    description:  'Battersea Power Station, Capa do álbum ""Animals"" do Pink Floyd (1977) (Antiga usina termelétrica)',
    address:      '188 Kirtling St',
    openinghours: '',
    price:        '',
    img:          'http://obviousmag.org/archives/uploads/2009/09092601_blog.uncovering.org_battersea-animals.jpg'
  },
################################################################################
# Bruxelas - Pontos Turisticos                                                 #
################################################################################
  {
    id:           50,
    local_id:     2,
    placetype:    0,
    name:         'Atomium',
    description:  'Estrutura metálica de 102 metros de altura',
    address:      'Square de l\'Atomium, 1020',
    openinghours: '10:00 - 18:00',
    price:        '12€',
    img:          'http://tripfreakz.com/uploads/at01.jpg'
  },
  {
    id:           51,
    local_id:     2,
    placetype:    0,
    name:         'Basílica de Sacré-Coeur Brussels',
    description:  'Construída entre 1905 e 1971. Possui uma bela vista da cidade',
    address:      'Parvis de la Basilique, 1',
    openinghours: '09:00- 17:00',
    price:        '4€',
    img:          'https://i2.wp.com/vivaviaje.com.br/wp-content/uploads/2015/03/basilica-bruxelas.jpg?fit=500%2C375'
  },
  {
    id:           52,
    local_id:     2,
    placetype:    0,
    name:         'Catedral de São Miguel e Santa Gudula',
    description:  'Igreja nacional da Bélgica, sede de casamentos e funerais reais, construída no estilo gótico brabantino. A principal igreja católica da Bélgica',
    address:      'Place Sainte Gudule, 1000',
    openinghours: '07:00 - 18:00',
    price:        '',
    img:          'https://www.karacitours.bg/public/files/belgiq/brussels/mihail-i-gudula.jpg'
  },
  {
    id:           53,
    local_id:     2,
    placetype:    0,
    name:         'Grand Place',
    description:  'Principal praça da cidade. Centro comercial e histórico',
    address:      'Grand Place, 1000',
    openinghours: '',
    price:        '',
    img:          'https://www.brussels.be/sites/default/files/styles/article_image__hd_/public/media-14469_1.jpg?itok=DT4exC3Z'
  },
  {
    id:           54,
    local_id:     2,
    placetype:    0,
    name:         'Jardim do Mont des Arts',
    description:  'Jardim famoso',
    address:      'Mont des Arts',
    openinghours: '',
    price:        '',
    img:          'https://thumbs.dreamstime.com/b/jardin-du-mont-des-arts-brussels-belgium-april-people-walking-park-beautiful-spot-to-see-view-40895612.jpg'
  },
  {
    id:           55,
    local_id:     2,
    placetype:    0,
    name:         'Manneken Pis',
    description:  'Estátua do menino urinando',
    address:      'L\'Etuve e Chene',
    openinghours: '',
    price:        '',
    img:          'http://s2.glbimg.com/TTEiUmFtY_7kwFUe74V0w2kIINA=/e.glbimg.com/og/ed/f/original/2015/08/07/5606606522_f2b12f52bf_b.jpg'
  },
  {
    id:           56,
    local_id:     2,
    placetype:    0,
    name:         'Notre-Dame au Sablon',
    description:  'Igreja construída em 1304 pelos arqueiros da cidade',
    address:      'Place du Grand Sablon, 1000',
    openinghours: '09:00 - 18:30',
    price:        '',
    img:          'https://upload.wikimedia.org/wikipedia/commons/c/cd/Notre-Dame_du_Sablon_%28Brussels%29.JPG'
  },
  {
    id:           57,
    local_id:     2,
    placetype:    0,
    name:         'Palácio da Justiça de Bruxelas',
    description:  'Construído no eclético estilo neoclássico, este enorme palácio da justiça é a construção mais alta da região',
    address:      'Place Poelaert 1',
    openinghours: '08:00 - 17:00',
    price:        '',
    img:          'https://st3.depositphotos.com/3345275/17370/i/450/depositphotos_173707160-stock-photo-courthouse-or-palace-of-justice.jpg'
  },
  {
    id:           58,
    local_id:     2,
    placetype:    0,
    name:         'Palácio Real de Bruxelas',
    description:  'Palais Royal, sede da monarquia constitucional belga',
    address:      'Rue Brederode 16',
    openinghours: '10:30 - 17:00',
    price:        '',
    img:          'http://www.pronews.gr/sites/default/files/article/2015/08/02/koninklijk-paleis.jpg'
  },
  {
    id:           59,
    local_id:     2,
    placetype:    0,
    name:         'Parlamento Europeu',
    description:  'Instituição parlamentar da União Europeia',
    address:      'Rue Wierz 60',
    openinghours: '13:00 - 18:00',
    price:        '',
    img:          'http://www.dw.com/image/16367586_303.jpg'
  },
  {
    id:           60,
    local_id:     2,
    placetype:    0,
    name:         'Parque do Cinquentenário',
    description:  'Parc du Cinquantenaire. Lá fica o Arco Triunfal',
    address:      'Jubelpark, 11',
    openinghours: '',
    price:        '',
    img:          'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Brussels_Cinquantenaire_R02.jpg/339px-Brussels_Cinquantenaire_R02.jpg'
  },
  {
    id:           61,
    local_id:     2,
    placetype:    0,
    name:         'Parque Mini-Europa',
    description:  'Parque com miniaturas dos pontos turísticos da Europa',
    address:      'Avenue du Football, 1 (Brupark)',
    openinghours: '09:30 - 20:00',
    price:        '15€',
    img:          'https://www.minieurope.com/wp-content/uploads/2015/10/panoramic20141-970x508.jpg'
  },
################################################################################
# Bruxelas - Museus                                                            #
################################################################################
  {
    id:           62,
    local_id:     2,
    placetype:    1,
    name:         'Instituto Real de Ciências Naturais de Bruxelas',
    description:  'Famoso por sua coleção de dinossauros, a maior da Europa, este museu fornece informações sobre a natureza e a história da evolução',
    address:      'Rue Vautier, 29',
    openinghours: '09:30 - 17:00',
    price:        '7€',
    img:          'https://3.bp.blogspot.com/-eeW3BWS8dXM/U9ZeCEc9PmI/AAAAAAAAA8k/-KJ732MgK10/s1600/museu-ciencias-naturais-bruxelas-fachada.jpg'
  },
  {
    id:           63,
    local_id:     2,
    placetype:    1,
    name:         'MOOF (Museum Of Original Figurines)',
    description:  'Museu de vários desenhos belgas (Tintim, Smurfs, Asterix)',
    address:      'Marché aux herbes 116',
    openinghours: '10:00 - 18:00',
    price:        '10€',
    img:          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Moof.jpg/1200px-Moof.jpg'
  },
  {
    id:           64,
    local_id:     2,
    placetype:    1,
    name:         'Museu do Cacau e do Chocolate',
    description:  'Conta a história do chocolate e explica as técnicas de produção dos famosos bombons e barras tradicionais de chocolate belgas. Possui degustação',
    address:      'Rue de la Tête d\'or 9',
    openinghours: '10:00 - 16:30',
    price:        '5,50€',
    img:          'https://www.viajandonomundo.com.br/wp-content/uploads/2011/04/museu-cacau-e-chocolate-bruxelas-belgica.jpg'
  },
  {
    id:           65,
    local_id:     2,
    placetype:    1,
    name:         'Museu dos Instrumentos Musicais',
    description:  'Museu com vários instrumentos antigos e esquisitos',
    address:      '2, Rue Montagne de la Cour',
    openinghours: '09:30 - 17:00',
    price:        '8€',
    img:          'http://farm9.staticflickr.com/8190/8148173563_cf34f059dc_z.jpg'
  },
  {
    id:           66,
    local_id:     2,
    placetype:    1,
    name:         'Museu Real das Forças Armadas e da História Militar',
    description:  'Museu com dezenas de aviões, tanques, uniformes e armas',
    address:      'Parc Du Cinquantenaire, 1000',
    openinghours: '09:00 - 17:00',
    price:        '5€',
    img:          'https://cdn.civitatis.com/belgica/bruselas/galeria/museo-historia-militar.jpg'
  },
################################################################################
# Bruxelas - Lojas                                                             #
################################################################################
  {
    id:           67,
    local_id:     2,
    placetype:    2,
    name:         'Galeries Saint Hubert',
    description:  'Primeiras galerias comerciais da Europa, criadas em 1847',
    address:      'Galerie de la Reine e Galerie du Roi',
    openinghours: '',
    price:        '',
    img:          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Galeries_Royales_Saint-Hubert.jpg/1200px-Galeries_Royales_Saint-Hubert.jpg'
  },
################################################################################
# Bruxelas - Restaurantes                                                      #
################################################################################
  {
    id:           68,
    local_id:     2,
    placetype:    3,
    name:         'Hard Rock Cafe Brussels',
    description:  'Restaurante Rock',
    address:      'Grand Place 12A',
    openinghours: '12:00 - 23:00',
    price:        '',
    img:          'http://monkey.in/fileadmin/_processed_/c/b/csm_hrc_brussels1_918e8de1d6.jpg'
  },
################################################################################
# Amsterdã - Pontos Turisticos                                                 #
################################################################################
  {
    id:           69,
    local_id:     3,
    placetype:    0,
    name:         'Begijnhof',
    description:  'Conjunto de casas fundado em 1346',
    address:      '1012 AB',
    openinghours: '09:00 - 17:00',
    price:        '',
    img:          'http://www.conexaoamsterdam.com.br/wp-content/uploads/2015/03/begijnhof-e-muito-lindo-810x540.jpg'
  },
  {
    id:           70,
    local_id:     3,
    placetype:    0,
    name:         'Nieuwe Kerk',
    description:  'Igreja criada no século XV',
    address:      'Gravenstraat 17, 1012 NL',
    openinghours: '10:00 - 17:00',
    price:        '9€',
    img:          'https://www.holland.com/upload_mm/4/4/1/cid25438_fullimage_Nieuwe-Kerk---Erik-en-Petra-Hesmerg.jpg'
  },
  {
    id:           71,
    local_id:     3,
    placetype:    0,
    name:         'Oude Kerk',
    description:  'Igreja construída em 1302, é o edifício mais antigo da cidade',
    address:      'Oudekerksplein 23, 1012 GX',
    openinghours: '10:00 - 18:00',
    price:        '10€',
    img:          'http://www.amsterdamforvisitors.com/wp-content/uploads/2017/05/Oude-Kerk-Amsterdam-2016-4.jpg'
  },
  {
    id:           72,
    local_id:     3,
    placetype:    0,
    name:         'Praça Dam',
    description:  'Lugar em torno do qual foi criada a cidade',
    address:      'Dam, 1012 JL',
    openinghours: '',
    price:        '',
    img:          'https://cdn.civitatis.com/paises-bajos/amsterdam/galeria/plaza-dam.jpg'
  },
  {
    id:           73,
    local_id:     3,
    placetype:    0,
    name:         'Westerkerk',
    description:  'Igreja de estilo renascentista',
    address:      'Prinsengracht 279, 1016 GW',
    openinghours: '10:00 - 20:00',
    price:        '7,50€',
    img:          'http://www.simplyamsterdam.nl/img/westerkerk.jpg'
  },
################################################################################
# Amsterdã - Museus                                                            #
################################################################################
  {
    id:           74,
    local_id:     3,
    placetype:    1,
    name:         'Casa da Anne Frank',
    description:  'Museu biográfico de Anne Frank',
    address:      'Prinsengracht 263-267, 1016 GV',
    openinghours: '10:00 - 20:00',
    price:        '10€',
    img:          'https://4.bp.blogspot.com/-fWstIUyOuYw/VhbugnZ-fBI/AAAAAAAACrc/KsjT26qIS84/s1600/i.png'
  },
  {
    id:           75,
    local_id:     3,
    placetype:    1,
    name:         'Heineken Experience',
    description:  'Museu da Heineken',
    address:      'Stadhouderskade 78, 1072 AE',
    openinghours: '10:30 - 17:30',
    price:        '16€',
    img:          'https://cdn-imgix.headout.com/tour/13922/TOUR-IMAGE/b14c72c3-2757-4780-93b4-c14d48ced0a4-7662-amsterdam-rijksmuseum-03.JPG'
  },
  {
    id:           76,
    local_id:     3,
    placetype:    1,
    name:         'Rijksmuseum',
    description:  'Museu nacional dos Países Baixos',
    address:      'Museumstraat 1, 1071 XX',
    openinghours: '09:00 - 17:00',
    price:        '17,50€',
    img:          'https://cdn.getyourguide.com/img/tour_img-360647-148.jpg'
  },
  {
    id:           77,
    local_id:     3,
    placetype:    1,
    name:         'Van Gogh Museum',
    description:  'Museu do Van Gogh',
    address:      'Museumplein 6, 1071 DJ ',
    openinghours: '09:00 - 17:00',
    price:        '18€',
    img:          'https://ak.jogurucdn.com/media/image/p15/activity-2017-07-11-14-6c846b62efe2b973cf6756688565d813.jpg'
  },
################################################################################
# Amsterdã - Restaurantes                                                      #
################################################################################
  {
    id:           78,
    local_id:     3,
    placetype:    3,
    name:         'Hard Rock Cafe Amsterdam',
    description:  'Restaurante Rock',
    address:      'Max Euweplein 57-61, 1017 MA',
    openinghours: '09:00 - 23:30',
    price:        '',
    img:          'https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/hard-rock-cafe-in-amsterdam-andre-goncalves.jpg'
  }
])

################################################################################
# Viagens                                                                      #
################################################################################
trips = Trip.create([
  {
    user_id:   users[1].id,
    name:      'Férias Julho 2018',
    beginning: Date.parse("17/07/2018"),
    duration:  14
  }
])

################################################################################
# Dias                                                                         #
################################################################################
Day.create([
  {
    trip_id:   trips[0].id,
    date:      Date.parse("17/07/2018"),
    place_ids: [
                8,  # Jardim de Luxemburgo
                2,  # Catacumbas
                7,  # Igreja Saint Sulpice
                12, # Panteão
                14  # Praça da Bastilha
               ]
  },
  {
    trip_id:   trips[0].id,
    date:      Date.parse("18/07/2018"),
    place_ids: [
                19, # Museu do Louvre
                9,  # Jardim de Tuileries
                15, # Praça da Concórdia
                6,  # Igreja Madeleine
                10, # Ópera Garnier
                21, # Galeries Lafayette
                24  # Hard Rock Cafe Paris
               ]
  },
  {
    trip_id:   trips[0].id,
    date:      Date.parse("19/07/2018"),
    place_ids: [
                16, # Big Ben (Palácio de Westminster)
                25, # Abadia de Westminster
                30, # Palácio de Buckingham
                44, # Hard Rock Cafe London
                33, # Imperial War Museum
                49  # Pink Floyd - Animals
               ]
  },
  {
    trip_id:   trips[0].id,
    date:      Date.parse("20/07/2018"),
    place_ids: [
                35, # Museu Britânico
                37, # National Gallery
                43, # M&M's World
                40, # Hamleys
                46, # The Beatles - Rooftop Concert
                47  # David Bowie - Ziggy Stardust
               ]
  },
  {
    trip_id:   trips[0].id,
    date:      Date.parse("21/07/2018"),
    place_ids: [
                27, # London Eye
                31, # St. Paul's Cathedral
                32, # Tower Bridge
                28, # London Tower
                29  # Meridiano de Greenwich (Royal Observatory)
               ]
  },
  {
    trip_id:   trips[0].id,
    date:      Date.parse("22/07/2018"),
    place_ids: [
                36, # Museu de História Natural
                39, # Camden Town
                48, # King's Cross Station Plataforma 9¾
                45, # The Beatles - Abbey Road
                41, # It's Only Rock & Roll
                42  # London Beatles Store
               ]
  },
  {
    trip_id:   trips[0].id,
    date:      Date.parse("23/07/2018"),
    place_ids: [
                50, # Atomium
                61, # Parque Mini-Europa
                60, # Parque do Cinquentenário
                66, # Museu Real das Forças Armadas e da História Militar
                62, # Instituto Real de Ciências Naturais de Bruxelas
                59  # Parlamento Europeu
               ]
  },
  {
    trip_id:   trips[0].id,
    date:      Date.parse("24/07/2018"),
    place_ids: [
                53, # Grand Place
                55, # Manneken Pis
                64, # Museu do Cacau e do Chocolate
                68, # Hard Rock Cafe Brussels
                67, # Galeries Saint Hubert
                63, # MOOF (Museum Of Original Figurines)
                52, # Catedral de São Miguel e Santa Gudula
                54, # Jardim do Mont des Arts
                56, # Notre-Dame au Sablon
                57, # Palácio da Justiça de Bruxelas
                58  # Palácio Real de Bruxelas
               ]
  },
  {
    trip_id:   trips[0].id,
    date:      Date.parse("25/07/2018"),
    place_ids: [
                74, # Casa da Anne Frank
                73, # Westerkerk
                70, # Nieuwe Kerk
                71  # Oude Kerk
               ]
  },
  {
    trip_id:   trips[0].id,
    date:      Date.parse("26/07/2018"),
    place_ids: [
                76, # Rijksmuseum
                77, # Van Gogh Museum
                75, # Heineken Experience
                78, # Hard Rock Cafe Amsterdam
                72, # Praça Dam
                69  # Begijnhof
               ]
  },
  {
    trip_id:   trips[0].id,
    date:      Date.parse("27/07/2018"),
    place_ids: [
                17, # Torre Eiffel
                3,  # Catedral de Notre Dame
                16  # Sainte Chapelle
               ]
  },
  {
    trip_id:   trips[0].id,
    date:      Date.parse("28/07/2018"),
    place_ids: [
                11, # Palácio de Versalhes
                1,  # Basílica de Sacré-Cœur Paris
                18  # Museu des Invalides
               ]
  },
  {
    trip_id:   trips[0].id,
    date:      Date.parse("29/07/2018"),
    place_ids: [
                0,  # Arco do Triunfo
                4,  # Champs Élysées
                13  # Ponte Alexandre III
               ]
  },
  {
    trip_id:   trips[0].id,
    date:      Date.parse("30/07/2018"),
    place_ids: [
                5   # Disneyland
               ]
  }
])

################################################################################
