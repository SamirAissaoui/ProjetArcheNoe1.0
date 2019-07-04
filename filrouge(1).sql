-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 04 juil. 2019 à 18:01
-- Version du serveur :  10.1.28-MariaDB
-- Version de PHP :  7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `filrouge`
--

-- --------------------------------------------------------

--
-- Structure de la table `authentification`
--

CREATE TABLE `authentification` (
  `id` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fonction` varchar(20) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `authentification`
--

INSERT INTO `authentification` (`id`, `user`, `password`, `fonction`, `nom`, `prenom`, `age`) VALUES
(1, 'comite1', 'comite2019', 'comite d\'evaluation', 'Enrique', 'Luis', 38),
(2, 'comite2', 'eval123', 'comite d\'evaluation', 'Cardo', 'Jeanne', 24),
(3, 'SamirAissaoui', 'SamirAissaoui', 'internaute', 'Aissaoui', 'Samir', 22),
(4, 'phil.coutinho', '123456789FR', 'internaute', 'Coutinho', 'Philippe', 23),
(5, 'narrateur1', 'narra2019', 'narrateur', 'Costa', 'Douglas', 33),
(17, 'PatGeady', 'mdp123', 'internaute', 'McGeady', 'Patrick', 27),
(21, 'samirA', 'samirA', 'internaute', 'Aissaoui', 'Samir', 22),
(22, 'sentinelle1', 'senti2019', 'sentinelle', 'Bernard', 'Michel', 36),
(23, 'ZZ5', 'ZZ5', 'internaute', 'Zidane', 'Zinedine', 38),
(24, 'Pguy', 'Pguy', 'internaute', 'Pierre', 'Guy', 39),
(25, 'Roger98', 'Roger98', 'internaute', 'Roger', 'Gold', 38),
(26, 'Flo40', 'gogo', 'internaute', 'Robert', 'Florian', 40),
(27, 'LioSeb', 'LioSeb', 'internaute', 'Lionel', 'Seb', 24),
(28, 'LEnrique', 'LEnrique', 'internaute', 'Enrique', 'Luis', 25),
(29, 'MLambert', 'MLambert', 'internaute', 'Lambert', 'Michel', 36),
(30, 'Mervin', 'Mervin', 'internaute', 'Mutzenberg', 'Ervin', 21);

-- --------------------------------------------------------

--
-- Structure de la table `aventure`
--

CREATE TABLE `aventure` (
  `id` int(11) NOT NULL,
  `miniature` text NOT NULL,
  `titre` varchar(50) NOT NULL,
  `mini_descri` text NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `espece` varchar(40) NOT NULL,
  `categorie` varchar(40) NOT NULL,
  `img` text NOT NULL,
  `population` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `aventure`
--

INSERT INTO `aventure` (`id`, `miniature`, `titre`, `mini_descri`, `description`, `date`, `espece`, `categorie`, `img`, `population`) VALUES
(1, 'https://www.safaris-intanzania.com/wp-content/uploads/2016/08/east-africa-safari-zanzibar.jpg', 'le guépard', 'Le guépard, l\'animal terrestre le plus rapide au monde, cours \"tout droit vers son extinction\" ? ', 'Moins de 7100 spécimens subsistent actuellement en liberté dans le monde, à 99% en Afrique, n\'occupant plus que 9% de la surface qu\'ils ont un temps occupé. Selon de précédentes estimations, non citées dans l\'étude menée par la Société zoologique de Londres (ZSL) et l\'organisation de défense de l\'environnement Wildlife Conservation Society (WCS), la population mondiale de guépards s\'élevait à environ 100.000 individus au début du XXe siècle.            Le guépard est une espèce menacée. On peut compter environ 6.700 guépards dans le monde aujourd’hui, mais il y a 100 ans il y en avant 10 fois plus ! Il disparait parce que l’homme détruit son habitat, alors que le guépard a besoin de grands espaces pour vivre. En plus, l’homme chasse le guépard alors que c’est interdit dans tous les pays d’Afrique depuis la fin des années 1990.', '2019-05-06', 'Guépard', 'Félin', 'https://www.reserveafricainesigean.fr/wp-content/uploads/2017/05/galerie-guepard.jpg', '10 000 à 15 000'),
(2, 'https://www.francetelevisions.fr/sites/default/files/images/2018/02/27/rsz_ourspolaireoperationsurvi-11_1_0.jpg', 'Ours polaire', 'Créature majestueuse du Grand Nord', 'L’ours blanc, que l’on appelle plus souvent ours polaire, est le plus grand ursidé de la planète et sans conteste le plus grand prédateur de l’Arctique. Symbole puissant de la vigueur et de la résistance de l’Arctique, ce chasseur infatigable voit sa survie menacée par le réchauffement climatique. La banquise, son habitat essentiel et fondement de l’écosystème arctique à l’équilibre fragile, est en train, littéralement, de lui fondre entre les pattes.\r\n\r\nSon nom scientifique Ursus maritimus signifie « ours marin », et on ne saurait mieux désigner que par ce nom ce fabuleux animal dont la vie tout entière est liée à l’océan, et plus particulièrement sur la banquise, ou glace de mer.', '2019-03-28', 'Ours Polaire', 'Ursidé', 'https://www.ensemblepourlesanimaux.org/wp-content/uploads/2017/12/c-Mario-Hoppmann.jpg', '25 000'),
(3, 'http://www.ompe.org/wp-content/uploads/2016/10/sauver-tigre.jpg', 'Le tigre du Bengale', 'Il y a 100 ans, on pouvait rencontrer le tigre du Bengale dans toute la péninsule indienne. Aujourd’hui, il ne subsiste qu\'environ 2 500 individus', 'Il y a 100 ans, on pouvait rencontrer le tigre du Bengale dans toute la péninsule indienne. Aujourd’hui, il ne subsiste qu\'environ 2 500 individus, principalement en Inde. Cette sous-espèce est certes la plus répandue mais elle n’en est pas moins menacée. \r\n\r\n \r\n\r\nLa plupart des tigres du Bengale vivent en Inde, mais il existe aussi de petites populations au Bangladesh, au Népal, au Bhoutan, en Chine et au Myanmar.\r\n\r\nLe tigre trône au sommet de la chaîne alimentaire, il est également un maillon essentiel pour la conservation d’une riche biodiversité naturelle. Protéger un seul tigre, c’est en effet préserver plusieurs centaines de km² de forêt (son territoire variant selon l\'abondance de proies).', '2019-03-30', 'Tigre du Bengale', 'Félin', 'https://www.cerza.com/wp-content/uploads/2016/07/Tigre-sumatra-4.jpg', '2 500'),
(4, 'https://www.ensemblepourlesanimaux.org/wp-content/uploads/2018/04/2018-04-11_1614.png', 'Lynx boréal', 'Mystérieux et invisible, le lynx est le plus grand félin d’Europe.\" \" \" ', 'Le lynx peut vivre aux côtés des humains à condition de ne pas être dérangé pendant ces activités de chasse et de reproduction. On estime la population européenne de lynx boréal à 9 500 individus. Comme elle est extrêmement morcelée, toute atteinte à chacun des noyaux relictuels de population risque encore de réduire son aire de répartition. Au cours des derniers siècles, le lynx boréal a été lourdement traqué, et a même été exterminé en certains endroits... \" \" \" ', '2019-05-18', 'Lynx boréal', 'Félin', 'https://cdn.shopify.com/s/files/1/1087/0554/products/75032_1024x1024.jpeg?v=1449766749', '200 en France, 9500 en Europe'),
(5, 'http://ekladata.com/MwFbWdAxHx1LG3ZhWdSUiimFVPw.jpg', 'Le panda géant', 'Son aire de répartition se réduit aujourd’hui à quelque 20 parcelles de forêts isolées dans les zones montagneuses des provinces de Sichuan, Shaanxi et Gansu (Chine), en raison de l’essor démographique et des activités humaines.', 'Depuis une dizaine d’années, les effectifs du panda géant augmentent très légèrement. Pourtant, il demeure l’une des espèces les plus menacées au monde. Son habitat continue à rétrécir, en raison notamment de l’expansion des zones agricoles et de la mise en œuvre de divers projets d’aménagement qui morcellent chaque jour un peu plus les parcelles de forêts de bambous restantes…', '2019-05-15', 'Panda géant', 'Ursidé', 'https://s.yimg.com/ny/api/res/1.2/WNZMeKE8YELDySjMudwfCQ--~A/YXBwaWQ9aGlnaGxhbmRlcjtzbT0xO3c9ODAw/http://media.zenfs.com/fr_FR/News/TeleLoisirs/108744-une-maman-panda-donne-le-bain-a-son-petit-et-c-est-vraiment-trop-mignon-video.jpeg', '1 864'),
(6, 'https://france3-regions.francetvinfo.fr/nouvelle-aquitaine/sites/regions_france3/files/styles/top_big/public/assets/images/2017/09/25/famillegorille_valleedessinges-3278275.jpg?itok=ZY62R-6u', 'Gorille', 'Les gorilles sont les plus grands des singes et probablement les plus impressionnants. Pourtant, loin de l’image véhiculée par la littérature et le cinéma, ce sont des animaux pacifiques et timides. Ils sont aussi nos plus proches cousins après les chimpanzés et les bonobos.\" \" ', 'Ils jouent un rôle crucial sur la biodiversité locale. En se déplaçant à travers de larges territoires ils contribuent, par exemple, à disséminer les graines des fruits qu’ils consomment, et ainsi à la régénération des forêts.\r\n\r\nCes animaux peuvent développer une force physique colossale. Pourtant, animaux pacifiques, ils ne l’utilisent pratiquement jamais.\r\n\r\nAujourd’hui, les gorilles sont en danger, à cause de la chasse au gibier, de la perte de leur habitat, du commerce d’animaux et des maladies infectieuses. Des menaces que viennent renforcer un taux de mortalité infantile élevé, une longue gestation (environ 8 mois et demi), une tendance aux naissances uniques ainsi qu’une longue période de soins maternels, en moyenne un seul petit est élevé, ce qui rend l’espèce particulièrement vulnérable.\" \" ', '2019-07-18', 'Gorille', 'Primates', 'https://www.hominides.com/data/images/illus/grands_singes/gorille-genome-sequence.jpg', '300'),
(7, 'https://www.zoo-mulhouse.com/wp-content/uploads/2018/04/wallaby-des-rochers-10-1.jpg', 'Wallaby des rochers', 'Les premiers colons d’Australie les ont tout d’abord pris pour des chats, d’où leur nom scientifique, Petrogale, qui signifie « chat des rochers ». Particulièrement adaptés aux reliefs accidentés, les wallabies des rochers peuvent sauter jusqu’à 4 mètres.', 'Animaux sociaux, ils vivent en communauté au sein de colonies comptant entre 10 et 100 individus. Les différents groupes vivent souvent très éloignés les uns des autres. Les mâles respectent une hiérarchie stricte, les plus grands et les plus forts occupant le premier rang. Chez les femelles, les animaux de la même famille partagent souvent leur abri, se protégeant ainsi de la chaleur, de la sécheresse et des rapaces. Au besoin, les femelles se mettent à plusieurs pour défendre leur abri contre les intrusions de leurs congénères, même si ceux-ci font partie de la même communauté.', '2019-08-24', 'Wallaby', 'Kangourou', 'https://www.wwf.fr/sites/default/files/styles/page_cover_large_16_9/public/2017-07/355221.jpg?h=4bb63ef4&itok=kxEerGOA', '132'),
(8, 'https://img.ev.mu/images/articles/960x/936678.jpg', 'Requin blanc', 'Avec sa mâchoire puissante aux dents acérées, le requin fait peur et fascine tout à la fois. Aujourd’hui, massacré par les hommes, ce mal-aimé risque de disparaître.', 'Les requins captivent l’imaginaire collectif. Tour à tour craints et vénérés, ils nourrissent de nombreux fantasmes, en particulier celui d’un mangeur d’homme, prédateur cruel, assoiffé de sang. Pourtant, aujourd’hui ils sont menacés par une pêche excessive.\r\n\r\nSelon la liste rouge mondiale des espèces menacées dressée par l’Union internationale pour la conservation de la nature, environ 60 % des requins pélagiques sont actuellement en danger d’extinction. Un bien mauvais présage pour les océans car la disparition de ces prédateurs-clés qui trônent tout en haut de la chaîne alimentaire aurait de lourdes conséquences pour les écosystèmes marins.', '2019-09-13', 'Requin blanc', 'Cétacés', 'https://img.ev.mu/images/articles/960x/936678.jpg', '200');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `adresse` varchar(500) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `raison` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `notif`
--

CREATE TABLE `notif` (
  `id` int(11) NOT NULL,
  `espece` varchar(50) NOT NULL,
  `img` text NOT NULL,
  `motif` text NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `population` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `notif`
--

INSERT INTO `notif` (`id`, `espece`, `img`, `motif`, `date`, `description`, `population`) VALUES
(1, 'Le puma de l\'Est américain', 'https://www.sciencesetavenir.fr/assets/img/2018/01/25/cover-r4x3w1000-5a69f3ed9e17b-sipa-superstock45109162-000001.jpg', 'C\'est un acte de décès. Le puma de l\'est américain a été déclaré mercredi officiellement éteint par les Etats-Unis. Aussi appelé cougar aux Etats-Unis, cet animal était sur la liste des espèces menacées depuis 1973 mais sa disparition était suspectée depuis les années 1930. ', '2019-05-23', 'Les scientifiques ont définit 16 sous-espèces de puma. Elles peuvent se reproduire entre elles mais comme elles vivent dans des régions éloignées, cela n’arrive pas. La sous-espèce de l’est de l’Amérique du Nord aussi appelée couguar a disparu. D’autres sont menacées de disparition. Dans certains pays, les pumas sont protégés, mais à différents endroits, ils sont chassés ou empoisonnés par les éleveurs qui les accusent d’attaquer leurs troupeaux.', 20),
(3, 'Le rhinocéros', 'https://www.wwf.fr/sites/default/files/styles/large_16_10/public/2017-05/112398-min.jpg?h=0e59fe3b&itok=7_vWjVUh', 'Bien que les populations de rhinocéros blanc aient augmenté de façon importante au cours des dernières années, grâce aux actions de conservation menées, et que l’espèce n’est pas à ce jour menacée de disparition, les quatre autres le sont à très court terme.', '2019-05-23', 'la corne de rhinocéros, à qui l’on prête des pseudos vertus thérapeutiques, est très prisée. La demande est intarissable, malgré tous les interdits, et pour y répondre le braconnage est constant.\r\n\r\nOn compte actuellement cinq espèces de rhinocéros, deux en Afrique - le rhinocéros blanc et le rhinocéros noir - et trois en Asie - le rhinocéros unicorne d’Inde, le rhinocéros de la Sonde et le rhinocéros de Sumatra. Parmi elles, les deux plus grandes espèces qui survivent de nos jours sont le rhinocéros blanc d’Afrique et le rhinocéros unicorne d’Asie.\r\n\r\nBien que les populations de rhinocéros blanc aient augmenté de façon importante au cours des dernières années, grâce aux actions de conservation menées, et que l’espèce n’est pas à ce jour menacée de disparition, les quatre autres le sont à très court terme.', 30),
(16, 'Wallaby des rochers', 'https://www.7destinations.com/wp-content/uploads/2018/03/kangaroos-1563624_1280.jpg', 'Animaux sociaux, ils vivent en communauté au sein de colonies comptant entre 10 et 100 individus. Les différents groupes vivent souvent très éloignés les uns des autres. Les mâles respectent une hiérarchie stricte, les plus grands et les plus forts occupant le premier rang.', '2019-06-13', 'En les voyant bondir au loin de rocher en rocher, les premiers colons d’Australie les ont tout d’abord pris pour des chats, d’où leur nom scientifique, Petrogale, qui signifie « chat des rochers ». Particulièrement adaptés aux reliefs accidentés, les wallabies des rochers peuvent sauter jusqu’à 4 mètres.', 1000),
(17, 'Le thon rouge', 'https://i.skyrock.net/2404/61082404/pics/2508677623_1_3_rykw02Cv.jpg', 'Le sort du thon rouge est entre nos mains. Laisserons-nous au mythique thon rouge une chance de récupérer ou le pêcherons-nous jusqu’à son extinction ?', '2019-07-26', 'Placé tout en haut de la chaîne alimentaire, le thon rouge de l’Atlantique n’a pas de prédateur naturel dans l’océan, si ce n’est l’orque. C’est un “superprédateur” qui occupe une place fondamentale dans le réseau trophique de l’océan et contribue ainsi à la stabilité des écosystèmes.\r\n\r\nAvec l’amélioration des techniques industrielles de pêche et l’apparition de bateaux usines, les petites conserveries entreprises ont progressivement cédé la place aux grands industriels, mettant peu à peu l’espèce en péril…', 750),
(18, 'Le Jaguar de Guyane', 'https://img.ev.mu/images/attractions/1426/960x640/13796.jpg', 'Ces quinze dernières années, la population du jaguar a chuté de 80% à cause des activités humaines comme la déforestation et le braconnage. Afin de sensibiliser le monde à la disparition de ce félin de l’Amazonie, Emmanuel a pour objectif de réaliser un cliché très haute définition du prédateur. Il est néanmoins aujourd’hui presque impossible d’y arriver, les jaguars sont discrets et bien plus rares qu’auparavant. ', '2019-07-18', 'Ces quinze dernières années, la population du jaguar a chuté de 80% à cause des activités humaines comme la déforestation et le braconnage. Afin de sensibiliser le monde à la disparition de ce félin de l’Amazonie, Emmanuel a pour objectif de réaliser un cliché très haute définition du prédateur. Il est néanmoins aujourd’hui presque impossible d’y arriver, les jaguars sont discrets et bien plus rares qu’auparavant. \r\nDe nombreux dangers le guettent et sa mission ne sera pas de tout repos ! La forêt amazonienne est aussi mystérieuse que dangereuse.\r\n\r\nDurant ces six épisodes, nous suivrons chacune de ses péripéties. De nombreuses découvertes vous attendent : bienvenue dans Mission Jaguar Guyane !', 3000);

-- --------------------------------------------------------

--
-- Structure de la table `projetencours`
--

CREATE TABLE `projetencours` (
  `id` int(11) NOT NULL,
  `espece` varchar(30) NOT NULL,
  `mini_descri` text NOT NULL,
  `description` text NOT NULL,
  `img` text NOT NULL,
  `miniature` text NOT NULL,
  `categorie` varchar(40) NOT NULL,
  `population` int(11) NOT NULL,
  `argent` int(11) NOT NULL,
  `nbParticipant` int(11) NOT NULL,
  `localisation` text NOT NULL,
  `ref` int(11) NOT NULL,
  `regime` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `projetencours`
--

INSERT INTO `projetencours` (`id`, `espece`, `mini_descri`, `description`, `img`, `miniature`, `categorie`, `population`, `argent`, `nbParticipant`, `localisation`, `ref`, `regime`) VALUES
(1, 'Ours brun d’Europe', 'Emblématique, l’ours brun incarne la nature à l’état sauvage. Tantôt adulé, tantôt traqué, il illustre l’éternelle ambiguïté des relations que l’homme entretient avec la nature.', 'Les ours sont chassés depuis la préhistoire pour leur viande et leur fourrure. Ils ont joué un rôle de premier plan dans la mythologie et ont alimenté de nombreuses légendes.\r\n\r\nEn Europe occidentale, on rencontre une sous-espèces d’ours, l’ours brun d’Europe. Cette sous-espèce fait face à de diverses pressions telles que les conflits avec l’élevage, l’exploitation forestière, la chasse en battue, ou la perte d’habitat par la constructions d’infrastructures humaines... Dans certains pays d’Europe occidentale (France, Autriche, Italie, Suisse) les populations d\'ours brun sont inférieures à 200 et de ce fait très fragiles.', 'https://www.sciencesetavenir.fr/assets/img/2018/03/09/cover-r4x3w1000-5aa291a9b6f89-000-az74w.jpg', 'https://cdn.pixabay.com/photo/2018/05/14/16/19/bear-3400641_960_720.jpg', 'Ursidés', 650, 5233, 39, 'USA, Europe de l\'Est', 89563, 'Carnivore'),
(2, 'Éléphant', 'Les populations d’éléphants ont chuté dramatiquement aux 19ème et 20ème siècles. Sur le continent africain, l’espèce compte aujourd’hui environ 415 000 individus (contre 3 à 5 millions au début du 20ème siècle). ', 'L’autre caractéristique notable des éléphants se situe au niveau de leurs larges oreilles qui, en plus de leur fonction auditive, permettent de refroidir le corps.\r\n\r\nQuant aux défenses, larges incisives modifiées se développant tout au long de la vie de l’éléphant, elles sont utilisées pour se battre, creuser, se nourrir ou bien se repérer. Hélas, celles-ci attirent la convoitise des braconniers pour alimenter un insatiable appétit d’ivoire causant la mort de 20 000 à 30 000 éléphants chaque année…\r\n\r\nLes populations d’éléphants ont chuté dramatiquement aux 19ème et 20ème siècles. Sur le continent africain, l’espèce compte aujourd’hui environ 415 000 individus (contre 3 à 5 millions au début du 20ème siècle). Quant à l’éléphant d’Asie, il est inscrit sur la liste rouge des espèces en danger d’extinction de l’UICN, ses effectifs ayant diminué d’au moins 50% au cours des trois dernières générations. Aujourd’hui, il en resterait moins de 50 000 à l’état sauvage.', 'https://www.wwf.fr/sites/default/files/styles/page_cover_large_16_9/public/2017-06/naha20160817_131.jpg?h=f5b644bb&itok=pknljRnL', 'https://www.wwf.fr/sites/default/files/styles/page_cover_large_16_9/public/2017-06/naha20160817_131.jpg?h=f5b644bb&itok=pknljRnL', 'Loxodonta', 600, 9865, 42, 'Afrique, Asie', 32654, 'Herbivore'),
(3, 'Dauphin', 'La répartition côtière du dauphin de Guyane en fait une espèce particulièrement sensible aux menaces anthropiques et aux captures accidentelles dans les filets de pêche en particulier.', 'Comme d’autres petits cétacés, le dauphin de Guyane est particulièrement sensible aux activités humaines. A l’échelle de son aire de répartition pourtant, les études restent insuffisantes aujourd’hui. Afin de renseigner son statut de conservation, des études sont menées dans les différents pays. En Guyane, le WWF a lancé dans ce cadre les premières démarches visant spécifiquement ce petit dauphin.\r\n\r\nDes études pour améliorer les connaissances et préserver le dauphin de Guyane\r\nDès 2013, le WWF a mis en place des études visant à améliorer la connaissance et le suivi de la population de dauphin de Guyane. Ainsi, des survols aériens ont notamment été effectués, permettant de mieux connaître la répartition des dauphins entre la Guyane et le Suriname voisin. Une approche sur la gestion des espaces et des menaces est menée en parallèle, s’intéressant notamment aux captures accidentelles et à la pollution chimique, mais aussi à la préservation de certains espaces, à des fins de conservation.', 'https://www.marguery-villas-resort.com/wp-content/uploads/2018/10/grands-dauphins-ile-maurice.jpg', 'https://www.marguery-villas-resort.com/wp-content/uploads/2018/10/grands-dauphins-ile-maurice.jpg', 'Cétacés', 655, 898, 27, 'Océan pacifique', 78456, 'Carnivore'),
(4, 'Le chimpanzé', 'En langue congolaise, chimpanzé signifie « faux-homme ». Nous partageons 98% de nos gènes avec le primate. Mais ce lien de parenté ne nous empêche pas de nuire à l’espèce en détruisant son habitat ou en la braconnant…', 'La dégradation des forêts due à l’exploitation forestière et minière, à l’agriculture et aux autres formes d’aménagement du territoire, contribue au déclin des espèces de primates dans toute l’Afrique tropicale. Les parcelles restantes d’habitat sont souvent petites et non-reliées, laissant les communautés de chimpanzés isolées.\r\n\r\nLa déforestation est plus avancée en Afrique de l’Ouest, où seul des vestiges de forêts tropicales primaires demeurent. Les petites populations de chimpanzés occidentaux, orientaux et du Nigeria sont principalement situées dans les parcs nationaux et réserves forestières restantes.', 'https://www.wwf.fr/sites/default/files/styles/page_cover_large_16_9/public/2017-05/naha20160817_190-min.jpg?h=f2c3f443&itok=4Snl2GAG', 'https://www.wwf.fr/sites/default/files/styles/page_cover_large_16_9/public/2017-05/naha20160817_190-min.jpg?h=f2c3f443&itok=4Snl2GAG', 'Primates', 290, 8120, 56, 'Afrique centrale', 25896, 'Herbivore'),
(5, 'L’albatros ', 'Les albatros sont de grands oiseaux de la famille des Diomédéidés qui passent la majeure partie de leur vie en mer. On reconnaît 22 espèces répartis en quatre genres : Diomedea (grands albatros), Thalassarche, Phoebastria (albatros du Pacifique Nord) et Phoebetria (albatros brun ou fuligineux).', 'Si les albatros sont protégés des prédateurs puisqu’ils passent l’essentiel de leur temps en mer, plusieurs menaces annexes rendent cependant l’espèce vulnérable. Certaines techniques de pêche, les pollutions d’origine humaine et la prédation et concurrence d’espèces invasives sur leurs lieux de ponte constituent les dangers les plus sérieux.', 'https://www.wwf.fr/sites/default/files/styles/page_cover_large_16_9/public/2017-05/257978-min.jpg?h=72d90b5d&itok=2YT2Gg6W', 'https://www.wwf.fr/sites/default/files/styles/page_cover_large_16_9/public/2017-05/257978-min.jpg?h=72d90b5d&itok=2YT2Gg6W', 'Procellariiformes', 600, 14, 0, 'Australie, Japon', 69874, 'Carnivore');

-- --------------------------------------------------------

--
-- Structure de la table `salarie`
--

CREATE TABLE `salarie` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `metier` varchar(50) NOT NULL,
  `site` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `authentification`
--
ALTER TABLE `authentification`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aventure`
--
ALTER TABLE `aventure`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notif`
--
ALTER TABLE `notif`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `projetencours`
--
ALTER TABLE `projetencours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `salarie`
--
ALTER TABLE `salarie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `authentification`
--
ALTER TABLE `authentification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `aventure`
--
ALTER TABLE `aventure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `notif`
--
ALTER TABLE `notif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `projetencours`
--
ALTER TABLE `projetencours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
