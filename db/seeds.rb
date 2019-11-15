# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

EventUser.destroy_all
Event.destroy_all
User.destroy_all


user1 = User.new(
  name: "lea",
  email: "lea@gmail.com",
  password: "lealea"
  )
user1.save!
user2 = User.new(
  name: "evan",
  email: "evan@gmail.com",
  password: "evanevan"
  )
user2.save!
user3 = User.new(
  name: "jeremy",
  email: "jeremy@gmail.com",
  password: "jeremy"
  )
user3.save!
users = [user1, user2, user3]


# 10.times do
#   event = Event.new(
#     name: Faker::Company.name,
#     date_start: Faker::Date.forward(days:300),
#     location: Faker::Address.city,
#     periodicity: ['mois', 'année', 'jour'].sample,
#     category: ['concert', 'theatre', 'dancing'].sample,
#     sub_category: ['humour', 'drame', 'chanson', 'art de rue', 'animation'].sample,
#     creator: users.sample
#     )
#   event.save!
# end

events_attributes = [
  {
    name: 'Roméo et Juliette',
    date_start: Date.new(2019,11,15),
    date_end: Date.new(2020,01,04),
    location: 'Lyon',
    address: '123 rue andré bollier, Lyon',
    periodicity: "annuel",
    category: 'Théâtre',
    sub_category: 'tragédie',
    description: "Roméo et Juliette est une tragédie de William Shakespeare. Écrite vers le début de sa carrière, elle raconte l'histoire de deux jeunes gens, Roméo Montaigu et Juliette Capulet, qui s'aiment malgré la haine que se vouent leurs familles et connaissent un destin funeste.
    La pièce s'inscrit dans une tradition d'histoires d'amour tragiques remontant à l'Antiquité. Son intrigue est issue d'un conte italien de Luigi da Porto traduit en anglais et en vers par Arthur Brooke en 1562 sous le titre The Tragical History of Romeus and Juliet.
    En 1582, William Painter en propose une version en prose dans son Palace of Pleasure.
    Shakespeare emprunte aux deux, mais il approfondit l'intrigue en développant les personnages secondaires, notamment Mercutio et le comte Pâris.
    Probablement rédigée entre 1591 et 1595, la pièce est publiée pour la première fois en in-quarto en 1597. Cette première édition, de mauvaise qualité, est supplantée par les éditions ultérieures qui respectent davantage le texte original de Shakespeare.
    La pièce témoigne du talent naissant du dramaturge, notamment dans la structure (les scènes comiques et tragiques alternent pour accroître la tension),
    le développement des personnages mineurs et des intrigues secondaires. Chaque personnage se voit attribuer une forme poétique particulière,
    qui peut varier au fil du temps : ainsi Roméo devient-il davantage adepte du sonnet au fil de la pièce. Roméo et Juliette a connu de nombreuses adaptations au théâtre, au cinéma,
    à l'opéra ou en comédie musicale. Les versions de William Davenant au xviie siècle et David Garrick au xviiie siècle prennent de grandes libertés avec l'œuvre de Shakespeare en censurant des passages jugés contraires aux bonnes mœurs,
    et ce n'est qu'à partir du milieu du xixe siècle que la pièce commence à être mise en scène de nouveau dans son texte d'origine. Le xxe siècle donne naissance à des adaptations aussi diverses que les films de George Cukor (1936) ou Franco Zeffirelli (1968), la comédie musicale West Side Story (1957) ou encore le Roméo + Juliette de la « génération MTV » réalisé par Baz Luhrmann (1996).",
    creator: users.sample
  },

  {
    name: 'La Vie de Galilée',
    date_start: Date.new(2019,12,23),
    date_end: Date.new(2019,12,23),
    location: 'Lyon',
    address: '57 rue Banaudon, Lyon',
    periodicity: "unique",
    category: 'Théâtre',
    sub_category: 'aventure',
    description: "Dans La Vie de Galilée, Bertolt Brecht raconte le vertige d’un monde qui voit subitement son ordre voler en éclats.
    Un grand spectacle de troupe mis en scène par Claudia Stavisky.
    Cela aurait pu être un jour comme les autres. Mais ce jour-là,
    dans les premières années du XVIIe siècle, Galilée braque une lunette astronomique vers le ciel et confirme
    l’hypothèse avancée avant lui par Copernic : la terre n’est pas au centre de l’univers.
    Cette affirmation fait exploser l’ordre qui prévalait depuis des siècles.
    Le ciel se retrouve soudainement vide. Mais où est donc passé le Dieu de l’Église catholique,
    délogé de la voûte céleste… ? La Vie de Galilée, Bertolt Brecht éclaire le vertige d’une humanité qui doit,
    du jour au lendemain, changer de repères. Pour jouer le rôle du célèbre savant, Claudia Stavisky a choisi Philippe Torreton. Entouré d’une dizaine d’interprètes (qui incarnent plus de quarante personnages), il s’élance avec éclat et appétit dans cette fable entremêlant raison et imagination. La directrice des Célestins signe la mise en scène d’un grand spectacle populaire. Un spectacle à la poésie sensuelle, organique, qui résonne comme un hymne à la vie.
    À noter : le spectacle sera repris à l’automne 2020.",
    creator: users.sample
  },

  {
    name: "Never Complain, never explain",
    date_start: Date.new(2019,11,15),
    date_end: Date.new(2019,11,17),
    location: 'Lyon',
    address: '34  rue de la République, Lyon',
    periodicity: "annuel",
    category: 'Festival',
    sub_category: 'art',
    description: "Lieu de création pour les artistes et territoire d’expériences pour les publics, Les Subs présentent un nouveau temps fort, Never Complain Never Explain*, dédié aux propositions qui subvertissent et bouleversent vos habitudes de spectateurs.
Jonglage 2.0, cirque en réalité virtuelle, performance à la croisée du Net Art et du théâtre, seul en scène burlesque…. En avant les créations hybrides et les expériences inédites !",
    creator: users.sample
  },

  {
    name: "Artjacking",
    date_start: Date.new(2019,11,15),
    date_end: Date.new(2019,11,15),
    location: 'Lyon',
    address: '20 rue des capucins, Lyon',
    periodicity: "mensuel",
    category: 'Musique',
    sub_category: 'rap',
    description: "ARTJACKING AU SUCRE AVEC LALA &CE ET JÄDE | CONCERT
    Lala &ce (925052 Records DK  / Londres, R-U)
    https://soundcloud.com/lala-ace-667
    Jäde (Universal Music / Lyon, France)
    https://soundcloud.com/yourjade
    Un concert Artjacking inédit, qui fait venir au Sucre l’une des nouvelles sensations de la scène hip-hop française : Lala &ce !
    Sa première partie sera assurée par la lyonnaise Jäde.

    🍻 2 nouvelles bières à déguster sur le rooftop ce weekend !
    Carlsberg 1883 & Carlsberg Unfiltered #pursuitofbetter",
    creator: users.sample
  },

  {
    name: "Foodoo",
    date_start: Date.new(2019,12,10),
    date_end: Date.new(2019,12,12),
    location: 'Lyon',
    address: '91  rue de la République, Lyon',
    periodicity: "annuel",
    category: 'Festival',
    sub_category: 'cuisine',
    description: "",
    creator: users.sample
  },

  {
    name: "Biennale d'art contemporain",
    date_start: Date.new(2019,11,18),
    date_end: Date.new(2019,01,05),
    location: 'Lyon',
    address: '96 Rue de Marseille, Lyon',
    periodicity: 'annuel',
    category: 'Exposition',
    sub_category: 'art contemporain',
    description: "Grâce à la mise à disposition du site exceptionnel des Usines Fagor, qui se déploie sur plus de 29 000 m² au cœur de Lyon, cette 15e édition prend une ampleur sans précédent. Avec cette immense friche industrielle, l’intégralité du macLYON, des interventions sur toute la métropole et en région Auvergne-Rhône-Alpes, c’est un champ d’expérimentation hors norme qui s’offre aux artistes et donne à la manifestation une dimension nouvelle. Cette augmentation des possibles a séduit le Palais de Tokyo et son équipe de curateurs à qui le commissariat a été confié. Pour relever ce défi, Adélaïde Blanc, Daria de Beauvais, Yoann Gourmel, Matthieu Lelièvre, Vittoria Matarrese, Claire Moulène et Hugo Vitrani ont parcouru le monde avec l’idée de favoriser les projets inédits. Ces commissaires ont été sollicités pour leur capacité à mettre en œuvre une énergie et des ressources multiples, un regard ouvert sur la création en train de se faire et une sensibilité particulière aux problématiques contemporaines qui traversent notre société.
Résultat de leurs pérégrinations et de leur confrontation aux Usines Fagor, ils ont choisi de constituer un « paysage » dans lequel le visiteur sera amené à se déplacer, à découvrir, à observer, à entendre, à interagir, à sentir et à vivre une expérience, avec des artistes qui interviennent dans un spectre allant du microbiome à la biosphère. Ensemble, ils ont imaginé cette 15e édition de la Biennale d’art contemporain de Lyon comme un parcours physique, visuel ou encore spirituel, auquel le visiteur est amené à prendre part.
Ils ont retenu plus d’une cinquantaine d’artistes de toutes générations et de tous les continents, dont plus de la moitié habitent en Europe et un tiers en France, et bien évidemment une parité homme/femme. Venus de Bangkok, de Buenos Aires, de Brooklyn, de Brisbane, de Johannesburg, de Kostërrc, de Lyon, de Mexico, de Moscou, de Saint-Étienne, d’Oslo, de Rome, de Paris, de Pittsburgh, de Zurich et de bien d’autres villes encore, les artistes sont invités à concevoir des œuvres in situ prenant en compte non seulement l’histoire et l’architecture des lieux mais également le contexte socio-économique dans lequel elles s’inscrivent. L’implication de tout le bassin économique de la région Auvergne Rhône-Alpes, de la chaîne des Puys aux contreforts des Alpes, constitue l’une des forces de cette Biennale. Grâce à la richesse de l’écosystème local (métallurgie, chimie, textile, BTP, automobile…), aux savoir-faire traditionnels et aux technologies de pointe, aux potentialités multiples qui s’offrent aux artistes, ils ont pu composer un incroyable panorama contemporain constitué de systèmes digestifs sculptés, d’un tunnelier abandonné, de véhicules remodelés, de ronciers augmentés, de papiers recyclés, de tissus étirés mais aussi de véritables nuages traversés…

L’équipe curatoriale a imaginé cette Biennale comme un parcours physique, visuel ou encore spirituel, auquel le visiteur est amené à prendre part.

Cette édition s’inscrit dans une volonté de soutenir la création d’œuvres nouvelles avec une diversité d’expressions, en lien avec les moyens de production en circuit court. La Biennale d’art contemporain de Lyon se veut ouverte sur les pratiques les plus larges, favorisant la porosité des champs d’expression, la diversité des publics et les espaces de rencontres. Elle est conçue sans compromis mais naturellement conviviale, dans un souci de dialogue et d’échange, en lien permanent avec les préoccupations tant locales qu’internationales.",
    creator: users.sample
  },

  {
    name: "FUNFUNFUNK",
    date_start: Date.new(2019,12,27),
    date_end: Date.new(2019,12,27),
    location: 'Lyon',
    address: '32 Rue Domer, Lyon',
    periodicity: "unique",
    category: 'Musique',
    sub_category: 'funk',
    description: "",
    creator: users.sample
  },

  {
    name: 'Scent of ink',
    date_start: Date.new(2019,11,20),
    date_end: Date.new(2020,01,20),
    location: 'Paris',
    address: '1 Rue Velpeau, Paris',
    periodicity: "annuel",
    category: 'Danse',
    sub_category: 'contemporain',
    description: "Par la Compagnie Nationale de Danse de Corée
Inspirée par l’esthétique des peintures à l’encre traditionnelle et la calligraphie, la création Scent of Ink (Mookhyang) offre une belle vision des danses et musiques traditionnelles coréennes. Les danseurs de la Compagnie Nationale de Danse de Corée y retracent artistement l’expression des quatre nobles végétaux de la tradition extrême-orientale : le bambou, le chrysanthème, le prunier et l’orchidée.
La délicatesse et le raffinement des costumes du styliste Jung Ku-ho, présentant une lecture contemporaine du superbe hanbok coréen, viennent ponctuer la scène de touches de couleurs virevoltantes. Au rythme de la musique traditionnelle Sanjo, les danseurs transmettent ainsi au public l’esprit des érudits de la dynastie Joseon.
Scent of Ink réinterprète la danse traditionnelle dans une approche contemporaine qui fait ressortir l’essence même de sa beauté. Ainsi cette création offre un nouveau regard sur la danse coréenne et l’ouvre aux scènes internationales. Dès la première représentation de Scent of Ink, en 2013, le décor épuré, les costumes hautement raffinés, ont fait sensation dans le monde de la danse et même au-delà, dans l’ensemble du milieu artistique.
Quatre feuilles géantes de papier, immaculées, descendent des cintres pour recouvrir le fond de scène et le proscenium. Les couleurs vives qui s’y déploient au fil des tableaux créent des visions saisissantes qui évoquent les peintures orientales. Les composants habituels que sont la danse, les costumes, la musique, respectent à la lettre les formes traditionnelles alors que, a contrario, la scénographie offre aux spectateurs une esthétique minimaliste.
Cette pièce, qui a vraiment marqué un tournant dans la danse coréenne, comprend six tableaux : Prologue, Fleur de prunier, Orchidée, Chrysanthème, Bambou, Épilogue. Elle illustre le regard posé sur le monde par les lettrés au fil des quatre saisons. Les mouvements délicats des vêtements suivent la chorégraphie des danseurs – le bout pointu d’un chausson entrevu sous la rondeur d’une jupe ample, l’extrémité d’une manche que soutient avec élégance la main de la danseuse – et donnent le sentiment que le hanbok lui-même danse. L’esthétique de la danse coréenne, celle du vide, celle du mouvement dans l’immobilité, s’exprime ici pleinement.
Scent of Ink a tout d’abord remporté un gros succès en Corée mais a également reçu ensuite un accueil triomphal au Japon, à Hong Kong et au Vietnam. Le spectacle a aussi été invité en France en 2016 et présenté à Lyon dans le cadre des prestigieuses Nuits de Fourvières.

―

Compagnie nationale de danse de Corée
Depuis sa fondation en 1962, la Compagnie Nationale de Danse de Corée, résidente du Théâtre National de Corée, a été dirigée par les plus grands artistes du pays, à commencer par son premier directeur artistique, Song Beom. La compagnie, qui réunit les meilleurs danseurs et danseuses coréens, est actuellement dirigée par Kim Sang-deok. Héritière des danses traditionnelles, elle s’efforce de développer de nouvelles interprétations de la danse coréenne afin d’attirer et d’inspirer un public contemporain. Le spectacle The Scent of Ink est devenu en quelques années l’un des fleurons de son répertoire.",
    creator: users.sample
  },

  {
    name: "J'ai envie de toi",
    date_start: Date.new(2019,11,29),
    date_end: Date.new(2020,04,16),
    location: 'Paris',
    address: '10 Rue de Mézières, Paris',
    periodicity: "annuel",
    category: 'Théâtre',
    sub_category: 'comedie',
    description: "",
    creator: users.sample
  },

  {
    name: "Touré Kunda",
    date_start: Date.new(2019,11,15),
    date_end: Date.new(2019,11,15),
    location: 'Paris',
    address: '2 Rue du Croissant, Paris',
    periodicity: "unique",
    category: 'Musique',
    sub_category: 'sénégal',
    description: "Les Touré Kunda sont les pères de la world music.
    Traversant le temps, le groupe a bercé toutes les générations et a su s'imposer en France comme à travers le monde.
    2018 annonçait leur grand retour avec un nouvel album Lambi Golo mélant sonorités authentiques et soupçon de modernisme
    et une tournée anniversaire pour leur 40 ans de carrière.
    En 2019, TOURE KUNDA revient pour la suite de leur Lambi Golo Tour avec l'envie de partager leur belle énergie.",
    creator: users.sample
  },

  {
    name: "Johnny, le fabuleux comeback",
    date_start: Date.new(2019,11,15),
    date_end: Date.new(2019,11,15),
    location: 'Paris',
    address: '33 Rue Saint-Sulpice, Paris',
    periodicity: "exceptionnel",
    category: 'Concert',
    sub_category: 'beauf',
    description: "Tout est dans le titre !",
    creator: users.sample
  },


  {
    name: "The best",
    date_start: Date.new(2019,11,20),
    date_end: Date.new(2020,06,01),
    location: 'Paris',
    address: '117 Boulevard Saint-Germain, Paris',
    periodicity: "unique",
    category: 'Spectacle',
    sub_category: 'comique',
    description: "Evénement exceptionnel au Théâtre des Nouveautés, à Paris, retrouvez Pierre Arditi et Michel Leeb, dans Compromis !
    Réservez les meilleures places en les sélectionnant sur le plan de la salle et recevez vos billets immédiatement en e-ticket.
    Une comédie à la fois drôle et mordante interprétée par deux grands comédiens qui s’affrontent dans un duo-duel réjouissant !
    Deux amis de trente ans dans un appartement vide. L’un, (Pierre Arditi) est un comédien médiocre, l’autre (Michel Leeb) un dramaturge raté. Le premier vend son appartement et a demandé au second d’être présent lors de la signature du compromis, pour rassurer l’acheteur. Car s’il écrit de très mauvaises pièces, il a tout de même un visage rassurant. C’est sa grande qualité. On attend l’acheteur. D’ailleurs, acheteur ou pigeon ?
    En l’attendant on parle. On se flatte. On se caresse. On se moque. On se taquine. Cela glisse peu à peu. On se blesse en se lançant à la face ce que l’on retient depuis longtemps. Et l’acheteur finit par arriver, qui va assister à un règlement de comptes, farcesque mais sans concession, entre les deux amis. Va-t-il en demeurer le spectateur, en devenir l’arbitre ou en être au final la seule victime ?",
    creator: users.sample
  },

  {
    name: "Sleep no more",
    date_start: Date.new(2019,12,20),
    date_end: Date.new(2020,01,05),
    location: 'Paris',
    address: '30 Rue du Dragon, Paris',
    periodicity: "unique",
    category: 'Théâtre',
    sub_category: 'vivant',
    description: "Sleep No More est la production new-yorkaise d'une œuvre théâtrale créée par la troupe de théâtre britannique Punchdrunk. Il est principalement basé sur Macbeth de William Shakespeare, mais s'inspire également de films noirs, ainsi que de références aux essais de 1697 Paisley.",
    creator: users.sample
  },

  {
    name: "Chrisian Boltanski",
    date_start: Date.new(2019,11,13),
    date_end: Date.new(2020,03,16),
    location: 'Paris',
    address: '10 Rue de Beaune, Paris',
    periodicity: "unique",
    category: 'Exposition',
    sub_category: 'art contemporain',
    description: "En quelque cinquante œuvres rythmant le parcours de Christian Boltanski, cette ample traversée de l’œuvre d’une des plus grandes figures de la création de notre temps permet d’en mesurer l’ampleur et l’ambition marquées par son histoire personnelle et un demi-siècle de méditations sur la fonction et la parole de l’artiste dans nos sociétés.
    Trente-cinq années se sont écoulées depuis la première exposition de Christian Boltanski au Centre Pompidou. Trente-cinq années qui ont vu l’œuvre se métamorphoser au cours des années 1980, lorsque l’artiste, délaissant le goût des archives et des inventaires qui l’avaient fait connaître comme l’une des figures majeures d’un art de la mémoire, commença de développer en de vastes installations et dispositifs, une œuvre en forme de leçons de ténèbres et de méditation sur la mort.
    De ce passage entre « petites formes » et « grandes formes », « Faire son temps » veut ici rendre compte. Conçue par Boltanski lui-même comme une vaste déambulation au cœur de son œuvre, l’exposition se veut moins une rétrospective qu’une suite de séquences marquant les étapes et les métamorphoses de son propos. Ainsi des premières salles qui rappellent comment Boltanski, en autodidacte, conçut ses pièces fondatrices, à partir d’une réflexion sur la photographie et toutes formes de bricolage et reconstitutions touchant à l’enfance et au passé de tout être humain. Ainsi des installations fragiles composant des Théâtres d’ombres teintés de merveilleux et d’un attachement qui ne se démentira plus pour les arts de la scène. Ainsi des vastes environnements aux lumières chancelantes offrant à découvrir dans la pénombre de salles éclairées par les œuvres elles-mêmes, une réflexion en forme de recueillement sur la disparition dans l’anonymat comme sur les traces les plus fugaces qui soient.",
    creator: users.sample
  },

  {
    name: "Futur, ancien, fugitif",
    date_start: Date.new(2019,10,16),
    date_end: Date.new(2020,01,05),
    location: 'Paris',
    address: '2 Rue de Marengo, Paris',
    periodicity: "unique",
    category: 'Exposition',
    description: "L’exposition Futur, ancien, fugitif, consacrée à « une scène française » s’appuie sur une conception ouverte de l’inscription territoriale – qui rassemble des artistes né.e.s en France ou à l’étranger, vivant en France ou à l’étranger, lié.e.s provisoirement ou durablement à ce pays – autant qu’elle échappe aux effets de tabula rasa qui voudraient qu’une génération en éclipse une autre. Elle réunit au contraire des « contemporain.e.s » qui partagent aujourd’hui cet espace en évolution et aux frontières poreuses. Et cherche à dessiner les courroies de transmission par lesquelles transite cet air du temps que respirent simultanément les quarante-quatre artistes ou collectifs d’artistes réuni·e·s pour l’occasion. Des artistes né·e·s entre les années 1930 et les années 1990, mais qui vivent et travaillent tou·te·s, dans et avec leur époque.
    Contemporain est un « mot transitif et par conséquent relationnel », rappelait Lionel Ruffel dans Brouhaha. Les mondes du contemporain. On est contemporain de quelque chose ou de quelqu’un et c’est cette interdépendance, ce liant qui nous sert à établir des ponts d’un·e artiste à l’autre dans l’exposition que nous avons bâtie dans l’ensemble des espaces du Palais de Tokyo. C’est encore cette perméabilité au présent et une forme de permanence au temps que nous avons cru déceler chez les artistes réuni·e·s dans l’exposition et qui nous a permis d’établir cette photographie non pas exhaustive, ni même représentative, mais simplement sensible d’une scène française. Ou plutôt d’une « autre » scène française. De celle qui se trame plus discrètement mais avec non moins de puissance dans les ateliers, les écoles d’art, les espaces partagés, dans les marges ou à l’abri du marché.
    Les artistes invité·e·s ont ainsi en partage d’opposer des formes de résistance aux assignations et autres effets de mode qui teintent irrémédiablement une époque. Non pas que ces artistes se tiennent à l’écart du monde d’aujourd’hui, bien au contraire, disons plutôt que refusant l’urgence, ils laissent s’infiltrer dans leurs œuvres l’épaisseur du temps. « Seul peut se dire contemporain celui qui ne se laisse pas aveugler par les lumières du siècle et parvient à saisir en elles la part de l’ombre, leur sombre intimité »  écrivait il y a quelques années Giorgio Agamben, ressuscitant au passant la très opérante notion d’« inactualité » qui pourrait convenir aux artistes dont il est ici question.
    Cette exposition est aussi l’occasion de rappeler qu’il n’existe pas une scène française, mais bien quantité de communautés, d’engagements et de singularités. Pendant les mois de préparation de l’exposition, nous nous sommes ainsi laissé.e.s surprendre par le relief de plus en plus saillant de certaines individualités à la surface vaste et complexe du paysage français. D’une curiosité toujours vive pour ce retour au collectif que l’on perçoit aujourd’hui chez un certain nombre de jeunes artistes qui tentent à nouveau l’expérience du vivre ensemble, des espaces partagés et des formes de mutualisation comme une réponse à une nécessité économique, nous sommes peu à peu passé·e·s à la nécessité de réaffirmer des trajectoires plus singulières. Singulières et pas forcément solitaires, puisque nombre d’artistes de cette exposition entretiennent des formes de compagnonnage au long cours avec leurs pairs, toutes générations confondues.
    Avec : Nils Alix-Tabeling, Mali Arun (Lauréate du Grand Prix du Salon de Montrouge 2018), Fabienne Audéoud, Carlotta Bailly-Borg, Grégoire Beil, Martin Belou, Jean-Luc Blanc, Maurice Blaussyld, Anne Bourse,Kévin Bray, Madison Bycroft, Julien Carreyn, Marc Camille Chaimowicz en collaboration avec We Do Not Work Alone et Wallpapers by Artists, Antoine Château, Nina Childress, Jean Claus, Jean-Alain Corre, Jonas Delaborde et Hendrik Hegray, Bertrand Dezoteux, Vidya Gastaldon, Corentin Grossmann, Agata Ingarden, Renaud Jerez, Pierre Joseph, Laura Lamiel, Anne Le Troter, Antoine Marquis, Caroline Mesquita, Anita Molinero, Aude Pariset, Nathalie Du Pasquier, Marine Peixoto, Jean-Charles de Quillacq, Antoine Renard, Lili Reynaud-Dewar, Linda Sanchez (Lauréate du Prix des Amis du Palais de Tokyo 2018), Alain Séchas, Anna Solal, Kengné Téguia, Sarah Tritz, Nicolas Tubéry, Turpentine, Adrien Vescovi, Nayel Zeaiter.
    Commissaires : Franck Balland, Daria de Beauvais, Adélaïde Blanc, Claire Moulène
    Assistante curatoriale : Marilou Thiébault",
    sub_category: 'art numerique',

    creator: users.sample
  },

  {
    name: "Philippe katerine, the show",
    date_start: Date.new(2019,11,16),
    date_end: Date.new(2020,01,16),
    location: 'Paris',
    address: '16 Rue de la Sourdière, Paris',
    periodicity: "unique",
    category: 'Exposition',
    sub_category: 'art numerique',
    description: "",
    creator: users.sample
  }
]

Event.create!(events_attributes)

puts "finished"




