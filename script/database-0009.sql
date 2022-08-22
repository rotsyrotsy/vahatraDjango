CREATE TABLE typePublication(
    id serial NOT NULL PRIMARY KEY,
    type varchar(100)
);

CREATE TABLE publication(
    id serial NOT NULL PRIMARY KEY,
    idType serial,
    title varchar(200),
    description text,
    year int,
    imagefront varchar(150),
    imageback varchar(150)
);

CREATE TABLE publicationDetail (
    id serial NOT NULL PRIMARY KEY,
    idPublication serial,
    name varchar(255),
    pdf varchar(100)
);

CREATE TABLE publicationAuthor(
    id serial NOT NULL PRIMARY KEY,
    idPublication serial,
    idAuthor int
);

ALTER TABLE publication 
    ADD CONSTRAINT fk_publication_typePublication FOREIGN KEY (idtype) REFERENCES typePublication(id) ;
ALTER TABLE publicationDetail 
    ADD CONSTRAINT fk_publicationDetail_publication FOREIGN KEY (idpublication) REFERENCES publication(id) ;
ALTER TABLE publicationAuthor 
    ADD CONSTRAINT fk_publicationAuthor_publication FOREIGN KEY (idpublication) REFERENCES publication(id) ;
ALTER TABLE publicationAuthor 
    ADD CONSTRAINT fk_publicationAuthor_author FOREIGN KEY (idAuthor) REFERENCES person(id) ;


INSERT INTO typePublication VALUES (1,'Malagasy Nature');
INSERT INTO typePublication VALUES (2,'Guides');
INSERT INTO typePublication VALUES (3,'Other publications'); 


INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (1,'Volume 1 - Les forêts sèches de Madagascar','This first issue of Malagasy Nature is a monograph of 200 pages on Madagascar dry forests, associated with inventories conducted by a group of scientists in Madagascar, which are among the founding members of the Association Vahatra.',2009,'mn1.gif',null);
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (1,'Volume 2','',2009,'mn2.gif',null);
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (1,'Volume 3: Biodiversity, exploration, and conservation of the natural habitats associated with the Ambatovy project','The third volume of Malagasy Nature presents a series of studies undertaken in the Ambatovy forests, near Moramanga. These studies were made within the framework of a research on the biodiversity partially covered forest zones, exposed to the mining by the Ambatovy Project. They were done to support the project conservation program.

Besides the description of the mining project conservation and ecological monitoring programmes, this Volume 3 shows the diverse biological and ecological information on various groups in particular, the invertebrates, the vertebrates, as well as the plants. It also compiles the results of the inventories of a zone near the region of Andasibe which was extensively studied for decades, in particular emphasizing the new discoveries on the flora and the fauna for these last 20 years. The new data presented in this volume show the biological importance of the studied zones. They will form basic information for the ecological and specific changes monitoring within the local biodiversity in time and in space.',2010,'mn3.gif',null);
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (1,'Volume 4','',2010,'mn4.gif',null);
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (1,'Volume 5','',2011,'mn5.gif',null);
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (1,'Volume 6','',2013,'mn6.gif',null);
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (1,'Volume 7','',2013,'mn7.gif',null);
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (1,'Volume 8','',2014,'mn8.gif',null);
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (1,'Volume 9','',2015,'mn9.gif',null);
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (1,'Volume 10','',2016,'mn10.gif',null);
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (1,'Volume 11','',2017,'mn11.gif',null);
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (1,'Volume 12','',2017,'mn12.gif','mn12_back.gif');
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (1,'Volume 13','',2019,'mn13.gif','mn13_back.gif');
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (1,'Volume 14','',2020,'mn14.gif','mn14_back.gif');
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (1,'Volume 15','',2021,'mn15.gif','mn15_back.gif');


INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (2,'Les chauves-souris de Madagascar','129 pp and 77 figures.',2011,'g1.gif','g1_back.gif');
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (2,'Les petits mammifères de Madagascar','176 pp and 100 figures.',2011,'g2.gif','g2_back.gif');
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (2,'Histoire naturelle des familles et sous-familles endémiques d''oiseaux de Madagascar','pp 148 and 54 figures.',2011,'g3.gif','g3_back.gif');
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (2,'Les Carnivora de Madagascar','pp 158 and 73 figures.',2012,'g4.gif','g4_back.gif');
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (2,'Les animaux et écosystèmes de l''Holocène disparus de Madagascar','pp 249, 34 figures and 20 plates.',2013,'g5.gif','g5_back.gif');
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (2,'Les amphibiens des zones arides du Sud et de l''Ouest de Madagascar','pp 180 and 129 figures',2014,'g6.gif','g6_back.gif');
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (2,'Les amphibiens du Nord de Madagascar','pp 354 and 197 figures, with pictograms.',2018,'g7.gif','g7_back.gif');
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (2,'Fourmis de Madagascar : un guide pour les 62 genres / Ants of Madagascar: a guide for the 62 genera','A bilingual French-English book. 253 pp.',2019,'g8.gif','g8_back.gif');
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (2,'Libellules et demoiselles de Madagascar et des Iles de l’Océan Indien occidentale / Dragonflies and damselflies of Madagascar and the western Indian Ocean Islands','A bilingual French-English book. 194 pp.',2021,'g9.gif','g9_back.gif');

INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (3,'Publications','',null,'op1.gif',null);
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (3,'Memoirs and thesis','',null,'op2.gif',null);
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (3,'Atlas of selected land vertebrates of Madagascar','While the past few decades have seen numerous publications about the extraordinary and highly endemic terrestrial vertebrate fauna of Madagascar, ranging from technical papers, to species descriptions, and field guides, no detailed mapping exercise has been completed in the form of an atlas. The purpose of this book is that, to bring together information from numerous sources and present distributional maps for a wide range of taxa, descriptive texts to interpret patterns, and, for most, habitat models (Maxent). For the different reptiles, birds, and mammals treated herein, this atlas is intended as a reference for students, researchers, naturalists, and conservationists.',null,'op3.gif',null);
INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (3,'The terrestrial protected areas of Madagascar: their history, description and biota.','',null,'op4.gif','op4_back.gif');

INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (3,'The New Natural History of Madagascar','In 2003, Steve Goodman and Jonathan P. Benstead (University of Georgia)
published a large volume (+1700 pages) entitled The Natural History
of Madagascar (University of Chicago Press). Steve was first editor
and principal contributor to the volume, which was widely praised—
e.g., Science called it “a scientific milestone and by far the largest synthesis
of tropical biology research ever.” Now fast forward nearly two decades
later and since the 2003 book appeared the amount of new information on
the natural history of Madagascar has expanded at a rate beyond the most
enthusiastic expectations. Advances made on research and conservation
fronts concerning Madagascar during this period easily surpassed that of
the 20 years preceding that volume’s publication. With all of this in mind,
Steve, as the principal editor, joined by 17 subject editors, including Achille
Raselimanana, have completely reworked the 2003 book. It is important to
underline that the new project is not a simple revision of the 2003 volume,
but a completely new book, with no previous contribution being simply
reprinted. Princeton University Press will publish the new volume in late
2022 or early 2023 under the title The New Natural History of Madagascar.
At the time of this writing, late January 2022, most of the book is in first
page proofs. The manuscript came in at just under 7,000 pages, including
553 figures and 243 tables, and has 279 contributions from 539 contributors,
of which about one-third are Malagasy and the 2003 book less than onequarter. The book will appear in two separate volumes of an estimated 1250
pages each. Princeton University Press has been highly collaborative in this
project and several hundred copies of the book will be sent to Madagascar for
distribution to different governmental and non-governmental collaborators
and partners of Association Vahatra',2023,'nnhm.jpg',null);

INSERT INTO publication(idType, title,description,year,imagefront,imageback) VALUES (3,'The Natural History of Madagascar',' Separated from the mainland of Africa for 160 million years, Madagascar has evolved an incredible wealth of biodiversity, with thousands of species that can be found nowhere else on earth. For instance, of its estimated 12,000 plant species, nearly 10,000 are unique to Madagascar. Malagasy animals are just as spectacular, from its almost forty currently recognized species of lemurs―a primate group found only here―to the numerous species of tiny dwarf chameleons. With astounding frequency scientists discover a previously unknown species in Madagascar―and at almost the same rate another natural area of habitat is degraded or destroyed, a combination that recently led conservation organizations to name Madagascar one of the most important and threatened conservation priorities on the planet.

The Natural History of Madagascar provides the most comprehensive, up-to-date synthesis available of this island nation''s priceless biological treasures. Contributions by nearly three hundred world-renowned experts cover the history of scientific exploration in Madagascar, its geology and soils, climate, forest ecology, human ecology, marine and coastal ecosystems, plants, invertebrates, fishes, amphibians, reptiles, birds, and mammals. Detailed discussions of conservation efforts in Madagascar highlight several successful park reserve programs that could serve as models for other areas. Beautifully illustrated throughout, the book includes over one hundred color illustrations, with fifty color photos by nature photographer Harald Schütz, as well as more than three hundred black-and-white photographs and line drawings.

The Natural History of Madagascar will be the invaluable reference for anyone interested in the Malagasy environment, from biologists and conservationists to policymakers and ecotourists. ',2003,'nhm.jpg',null);


INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(1,'Préface', 'volume1/mn01_preface.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(1,'Introduction', 'volume1/mn01_01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(1,'Exploration et connaissance biologique des différents sites inventoriés', 'volume1/mn01_02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(1,'Herpétofaune des forêts sèches malgaches', 'volume1/mn01_03.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(1,'L’avifaune des forêts sèches malgaches ', 'volume1/mn01_04.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(1,'Les petits mammifères non-volants des forêts sèches malgaches', 'volume1/mn01_05.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(1,'Les lémuriens des forêts sèches malgaches', 'volume1/mn01_06.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(1,'Pressions et menaces dans la région forestière sèche malgache', 'volume1/mn01_07.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(1,'Aspect de la conservation des forêts sèches de Madagascar', null);
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(1,'La création des aires protégées dans le sud et sud ouest de Madagascar : approche et méthodologie', 'volume1/mn01_08.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(1,'Index', 'volume1/mn01_index.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(1,'Format for contribution', 'volume1/mn01_format.pdf');

INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'Préface', 'volume2/mn02_00.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'A review of the impacts of anthropogenic habitat change on terrestrial biodiversity in Madagascar: Implications for the design and management of new protected areas', 'volume2/mn02_01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'Vertébrés terrestres des fragments forestiers de la Montagne d’Ambatotsirongorongo, site dans le Système des Aires Protégées de Madagascar de la Région Anosy, Tolagnaro', 'volume2/mn02_02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'Reptiles, amphibiens et gradient altitudinal dans la région de Daraina, extrême nord-est de Madagasca', 'volume2/mn02_03.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'A review of the endoparasites of the lemurs of Madagascar', 'volume2/mn02_04.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'Les populations d’oiseaux aquatiques en périphérie d’une ferme de crevetticulture (OSO Farming)', 'volume2/mn02_05.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'Etude ethnobotanique des ignames (Dioscorea sp.) dans la forêt Mikea et le couloir d’Antseva (sud-ouest de Madagascar)', 'volume2/mn02_06.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'Variations morphométrique et moléculaire chez Miniopterus majori (Chiroptera : Miniopteridae) de Madagascar', 'volume2/mn02_07.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'The species of Grosphus Simon (Scorpiones, Buthidae) distributed in the northern and eastern regions of Madagascar with the description of a new species', 'volume2/mn02_08.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'Frugivory and facilitation of seed germination by the Velvet Asity, Philepitta castanea (Muller, 1776), in the rainforest understory of Ranomafana National Park, Madagascar', 'volume2/mn02_notes_01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'The diet of the endemic bat Myzopoda aurita (Myzopodidae) based on fecal analysis', 'volume2/mn02_notes_02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'Notes on the diet of the Barn Owl (Aves: Tytonidae: Tyto alba) from Zohin’Andavaka, Beahitse, extreme southwestern Madagascar', 'volume2/mn02_notes_03.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'Urban avian population and possible heavy metal contamination at Parc Tsaratsoatra, Alarobia, Antananarivo, Madagascar', 'volume2/mn02_notes_04.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'New distributional record of Appert’s Tetraka (Xanthomixis apperti) from Salary Bay, Mikea Forest, Madagascar', 'volume2/mn02_notes_05.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'The Sooty Gull, Larus hemprichii (Aves: Laridae), on Nosy Ve: first records for Madagascar', 'volume2/mn02_notes_06.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'Index ', 'volume2/mn02_index.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'Notes aux contributeurs dans Malagasy Nature', 'volume2/mn02_contributeurs.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(2,'Format for contributions to Malagasy Nature', 'volume2/mn02_contribution.pdf');

INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(3,'Préface', 'volume3/mn03_00.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(3,'Ambatovy project: Mining in a challenging biodiversity setting in Madagascar', 'volume3/mn03_01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(3,'Biological research conducted in the general Andasibe region of Madagascar with emphasis on enumerating the local biotic diversity', 'volume3/mn03_02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(3,'Introduction to the early 2009 biological inventories conducted by the Association Vahatra in the Ambatovy-Analamay region', 'volume3/mn03_03.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(3,'Floristic inventory of the Ambatovy-Analamay mine site and comparison to other sites in Madagascar', 'volume3/mn03_04.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(3,'Survey of leaf litter ant species and assessment of invasive ants in the mining sites at Ambatovy, Madagascar', 'volume3/mn03_05.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(3,'Watercourse ecological sensitivity classification as a management framework to ameliorate pipeline construction impacts associated with the Ambatovy project', 'volume3/mn03_06.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(3,'The amphibians and reptiles of the Ambatovy-Analamay region', 'volume3/mn03_07.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(3,'The birds of the Ambatovy-Analamay region', 'volume3/mn03_08.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(3,'The non-volant and non-primate mammals of the Ambatovy-Analamay forest ', 'volume3/mn03_09.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(3,'The lemurs of the Ambatovy-Analamay region', 'volume3/mn03_10.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(3,'The Ambatovy lemur population spatial monitoring program: Summary of primary objectives and methods', 'volume3/mn03_11.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(3,'Index', 'volume3/mn03_contributeurs.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(3,'Notes aux contributeurs dans Malagasy Nature', 'volume3/mn03_contribution.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(3,'Format for contributions to Malagasy Nature', 'volume3/mn03_index.pdf');

INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(4,'Rock matrix surrounding subfossil lemur skull yields diverse collection of mammalian subfossils: Implications for reconstructing Madagascar’s paleoenvironments', 'volume4/mn04_01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(4,'Influences des pièges sur la réitération et la sexualité des utriculaires aquatiques : cas d’Utricularia gibba et U. stellaris (Lentibulariaceae)', 'volume4/mn04_02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(4,'Estimation de la densité des populations d’une espèce menacée de tortue terrestre (Astrochelys radiata) dans le Parc National Tsimanampetsotsa au Sud de Madagascar', 'volume4/mn04_03.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(4,'Liste des noms vernaculaires en langue française des espèces de chauves - souris de Madagascar', 'volume4/mn04_04.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(4,'Distributions et caractéristiques des microhabitats de Microcebus griseorufus (Cheirogaleidae) dans le Parc National de Tsimanampetsotsa (Sud ouest de Madagascar)', 'volume4/mn04_05.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(4,'Madagascar Buzzard (Buteo brachypterus) nest in association with the colonial nesting Sakalava Weaver (Ploceus sakalava)', 'volume4/mn04_notes_01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(4,'Petits mammifères (Afrosoricida et Rodentia) nouvellement recensés dans le Parc National d’Andohahela (parcelle 1), Madagascar', 'volume4/mn04_notes_02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(4,'Espèces d’amphibiens et de reptiles nouvellement recensés dans le Parc National d’Andohahela, Madagascar', 'volume4/mn04_notes_03.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(4,'Index', 'volume4/mn04_index.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(4,'Notes aux contributeurs dans Malagasy Nature', 'volume4/mn04_contributeurs.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(4,'Format for contributions to Malagasy Nature', 'volume4/mn04_contribution.pdf');

INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(5,'Structure dentaire : Implication pour la paléoécologie des Traversodontidae (Eucynodontia) du Trias de Madagascar', 'volume5/mn05_01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(5,'Phenology of different vegetation types in Tsimanampetsotsa National Park, southwestern Madagascar', 'volume5/mn05_02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(5,'Analyse structurale des formations végétales du Parc National d’Andohahela, habitat de Microcebus spp. (Sud-est de Madagascar)', 'volume5/mn05_03.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(5,'Conservation status of some commercialized succulent species of Madagascar', 'volume5/mn05_04.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(5,'Diet of the Mascarene grass frog, Ptychadena mascareniensis, in Madagascar', 'volume5/mn05_05.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(5,'Un premier aperçu de la diversité herpétofaunique d’un bloc forestier isolé, la forêt sèche de Beanka, dans la partie Ouest de Madagascar', 'volume5/mn05_06.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(5,'Habitat préférentiel d’Uroplatus giganteus (Reptilia, Gekkonidae), dans le complexe de la Montagne d’Ambre, Nord de Madagascar', 'volume5/mn05_07.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(5,'A case of the sympatric occurrence of Microgale brevicaudata and M. grandidieri (Afrosoricida, Tenrecidae) in the Beanka Forest, Maintirano', 'volume5/mn05_08.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(5,'Inventaire de chauves-souris dans la concession forestière de Kirindy CNFEREF, Morondava, Madagascar', 'volume5/mn05_09.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(5,'Bats of the Beanka Forest, a limestone karstic zone near Maintirano, central western Madagascar', 'volume5/mn05_10.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(5,'Sakalava weaver (Ploceus sakalava) nesting association with raptors: An alternative hypothesis', 'volume5/mn05_notes01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(5,'Des Molossidae dans un arbre gîte de la région de Menabe central : description et biologie', 'volume5/mn05_notes02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(5,'Index ', 'volume5/mn05_index.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(5,'Notes aux contributeurs dans Malagasy Nature', 'volume5/mn05_contributeurs.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(5,'Format for contributions to Malagasy Nature', 'volume5/mn05_contribution.pdf');

INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(6,'Note to readers - Note aux lecteurs', 'volume6/mn06_00.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(6,'Un premier aperçu de la faune de vertébrés du bush épineux de Salary-Bekodoy, à l’ouest du Parc National de Mikea, Madagascar', 'volume6/mn06_01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(6,'Phenology of different vegetation types in the dry forest of Andohahela National Park, southeastern Madagascar', 'volume6/mn06_02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(6,'Three new Aloe species from Madagascar', 'volume6/mn06_03.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(6,'Etudes dendrométriques et dendrochronologiques de neuf espèces de Commiphora Jacq. (Burseraceae) dans les forêts sèches de l’Ouest de Madagascar', 'volume6/mn06_04.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(6,'Influence de la variabilité climatique sur la phénologie de la forêt de la Réserve Spéciale de Bezà Mahafaly', 'volume6/mn06_05.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(6,'Can differences in floristic composition explain variation in the abundance of two sympatric mouse lemur species (Microcebus) in the Ankarafantsika National Park, northwestern Madagascar?', 'volume6/mn06_06.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(6,'Bio-écologie des chauves-souris du Parc National de Tsimanampetsotsa. 1. Identification bioacoustique et habitat préférentiel', 'volume6/mn06_07.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(6,'Bio-écologie des chauves-souris du Parc National de Tsimanampetsotsa. 2. Variation interspécifique et saisonnière du régime alimentaire', 'volume6/mn06_08.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(6,'Sighting of a ring-tailed vontsira (Galidia elegans) in the gallery forest of Berenty Private Reserve, southeastern Madagascar', 'volume6/mn06_09.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(6,'Two records of albinism in Malagasy birds', 'volume6/mn06_10.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(6,'Format for contributions to Malagasy Nature', 'volume6/mn06_11.pdf');

INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'Préface et remerciements/Preface and acknowledgements', 'volume7/mn07preface.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'La forêt de Beanka, Région Melaky, Ouest de Madagascar : introduction et présentation du milieu', 'volume7/mn07chapter01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'Current conservation trends in the Beanka Reserve', 'volume7/mn07chapter02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'Caves of the Beanka karst, Melaky Region, western Madagascar', 'volume7/mn07chapter03.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'Rapport sur une mission archéologique à Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter04.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'Cartographie de la couverture forestière du massif de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter05.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'Structure et composition floristique de la forêt sur faciès karstique de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter06.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'Inventaire des plantes vasculaires de la région de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter07.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'The non-marine molluscs of Tsingy Beanka, Melaky Region, western Madagascar', 'volume7/mn07chapter08.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'Diversity of ants in burned and unburned grassland, and dry deciduous forest in the Beanka Reserve, Melaky Region, western Madagascar', 'volume7/mn07chapter09.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'Distribution et diversité des communautés terrestres et fouisseuses de vertébrés et d’invertébrés dans un écotone savane-forêt sèche de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter10.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'Faune herpétologique de la forêt de Beanka, Région Melaky : richesse biologique, intérêt biogéographique et importance dans la conservation de la biodiversité malgache', 'volume7/mn07chapter11.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'Premier aperçu de la diversité des oiseaux de la forêt sèche sur tsingy de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter12.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'Aperçu sur l’écologie de Mentocrex beankaensis (Aves, Rallidae) de la forêt sèche de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter13.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'Diversité des petits mammifères sur une formation de tsingy : cas de la forêt de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter14.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'Lemurs of the Beanka Forest, Melaky Region, western Madagascar', 'volume7/mn07chapter15.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'The importance of field inventories and associated studies to understand biodiversity patterns: The case of the Beanka Forest, Melaky Region, western Madagascar', 'volume7/mn07chapter16.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'Index', 'volume7/mn07index.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(7,'Notes aux contributeurs/Format for contributions', 'volume7/mn07contributeurs.pdf');

INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(8,'Paleoecological analysis of elephant bird (Aepyornithidae) remains from the Late Pleistocene and Holocene formations of southern Madagascar', 'volume8/mn08_chapter01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(8,'Endemic non-bambusoid genera of grasses (Poaceae) in Madagascar: Review of current knowledge', 'volume8/mn08_chapter02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(8,'Investigating behavior and ecology of Aphaenogaster swammerdami (Formicidae) in selectively logged forest: 20 years later – a happy ant?', 'volume8/mn08_chapter03.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(8,'First record of Corethrellidae (Diptera), frog-biting midges, in Madagascar', 'volume8/mn08_chapter04.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(8,'The species composition and distribution of hematophagous insects collected by light-traps in and near cave systems of Madagascar', 'volume8/mn08_chapter05.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(8,'The dietary habits of Barn Owls (Tyto alba) in the spiny bush of southwestern Madagascar', 'volume8/mn08_chapter06.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(8,'Duchemin’s ‘Linnet’: Was there a second species of native fody Foudia sp. in the Granitic Seychelles? – with additional evidence for the mid-19th century introduction of F. madagascariensis', 'volume8/mn08_chapter07.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(8,'Vocalisations de Pipistrellus spp. sensu lato de Madagascar : Expérience sur l’effet de confinement', 'volume8/mn08_chapter08.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(8,'The bats of the Kianjavato-Vatovavy region, lowland eastern central Madagascar', 'volume8/mn08_chapter09.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(8,'An albino molossid bat from the southwestern Indian Ocean region', 'volume8/mn08_note01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(8,'A record of vertebrate carnivory by the Crested Drongo (Dicrurus forficatus)', 'volume8/mn08_note02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(8,'Format for contributions to Malagasy Nature', 'volume8/mn08_formatforcontributions.pdf');

INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(9,'Dynamique post-culturale de la végétation dans la presqu’île d’Ampasindava, Domaine du Sambirano, Nord-ouest de Madagascar', 'volume9/mn09_00.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(9,'Biodiversité de l’entomofaune des rizières de la région de Lac Alaotra (Madagascar)', 'volume9/mn09_01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(9,'Puces (Insecta : Siphonaptera) d’Ambohitantely, Madagascar : Spécificité et phénologie', 'volume9/mn09_02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(9,'Suivi de la communauté aviaire aquatique dans la Nouvelle Aire Protégée Mandrozo, Ouest de Madagascar', 'volume9/mn09_03.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(9,'Préférence alimentaire des chauves-souris de Kianjavato, région de Vatovavy-Fitovinany, Madagascar', 'volume9/mn09_04.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(9,'Comportement alimentaire des communautés de chauves-souris animalivores de Kirindy (CNFEREF) et d’Antsahabe, Madagascar : répartition, partage et disponibilité de niche alimentaire', 'volume9/mn09_05.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(9,'The importance of water bodies for insectivorous bats in a Malagasy dry deciduous forest: A case example from Kirindy (CNFEREF)', 'volume9/mn09_06.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(9,'Terrestrial “forest-dwelling” endemic small mammals captured outside of natural habitats in the Moramanga District, central eastern Madagascar', 'volume9/mn09_07.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(9,'Remains of an aye-aye (Daubentonia madagascariensis) at the edge of the Parc National d’Ankarana, Région Diana', 'volume9/mn09_08.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(9,'Documented occurrence of Taphozous mauritianus (E. Geoffroy, 1818) in Mayotte (Comoros Archipelago)', 'volume9/mn09_09.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(9,'Third record of pied avocet (Recurvirostra avosetta) for Madagascar', 'volume9/mn09_10.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(9,'Format for contributions to Malagasy Nature', 'volume9/mn09_11.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(9,'Notes aux contributeurs dans Malagasy Nature', 'volume9/mn09_12.pdf');

INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(10,'Préface et remerciements', 'volume10/mn10_00.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(10,'Variabilité et changement du climat à Bezà Mahafaly', 'volume10/mn10_01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(10,'Dynamique de la couverture forestière dans la Réserve Spéciale de Bezà Mahafaly et sesenvirons', 'volume10/mn10_02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(10,'Mammalian biodiversity at Bezà Mahafaly: An update', 'volume10/mn10_03.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(10,'Diurnal lemurs at Bezà Mahafaly: Resilience and risk', 'volume10/mn10_04.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(10,'Dynamique de l’herpétofaune de Bezà Mahafaly', 'volume10/mn10_05.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(10,'Suivi de l’avifaune de Bezà Mahafaly', 'volume10/mn10_06.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(10,'Dynamiques socio-économiques et utilisation des ressources naturelles dans la Réserve Spéciale de Bezà Mahafaly et ses environs', 'volume10/mn10_07.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(10,'Gouvernance de la Réserve Spéciale de Bezà Mahafaly', 'volume10/mn10_08.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(10,'Epilogue : Progrès et perspectives', 'volume10/mn10_09.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(10,'Notes aux contributeurs dans Malagasy Nature', 'volume10/mn10_10.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(10,'Format for contributions to Malagasy Nature', 'volume10/mn10_11.pdf');

INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(11,'Results of a biological inventory of the Nosy Ankao island group, Parc National de Loky-Manambato, northeastern Madagascar', 'volume11/mn11.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(11,'Notes aux contributeurs dans Malagasy Nature', 'volume10/mn10_10.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(11,'Format for contributions to Malagasy Nature', 'volume10/mn10_11.pdf');

INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(12,'Les unités paysagères dela péninsule d’Ampasindava (Nord-ouest de Madagascar), un terroir sous haute pression de déforestation', 'volume12/mn12_00.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(12,'Influence des caractéristiques forestières et des perturbations anthropogéniques sur la distribution des lémuriens de la Forêt Classée d’Ankadivory (Tsinjoarivo-Ambatolampy)', 'volume12/mn12_01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(12,'Updated extinction risk assessments of Madagascar’s freshwater decapod crustaceans reveal fewer threatened species but more Data Deficient species', 'volume12/mn12_02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(12,'Sex-ratio chez les puces (Insecta : Siphonaptera) d’Ambohitantely, Hautes Terres Centrales de Madagascar', 'volume12/mn12_03.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(12,'Découverte de la construction du nid de l’aigle serpentaire de Madagascar (Eutriorchis astur) dans l’Aire Protégée de Bemanevika, Nord-ouest de Madagascar', 'volume12/mn12_04.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(12,'Les tiques dures (Acari : Ixodidae) ectoparasites de micromammifères non-volants dans la forêt d’Ambohitantely, Madagascar', 'volume12/mn12_05.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(12,'Survie et variation temporelle de la taille de la population de Rousettus madagascariensis (Chiroptera : Pteropodidae) de la Grotte des Chauves-souris d’Ankarana, Nord de Madagascar', 'volume12/mn12_06.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(12,'Diversité et écologie des petits mammifères dans les habitats forestiers et anthropiques du District de Moramanga, Centre-est de Madagascar', 'volume12/mn12_07.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(12,'The distribution and ecology of invasive alien vertebrate species in the greater Toamasina region, central eastern Madagascar', 'volume12/mn12_08.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(12,'Nest of the Malagasy Pond Heron Ardeola idae in northern Madagascar', 'volume12/mn12_09.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(12,'Occurrence of Taphozous mauritianus (Emballonuridae) in Maintirano, western Madagascar', 'volume12/mn12_10.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(12,'Format for contributions to Malagasy Nature', 'volume12/mn12_11.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(12,'Notes aux contributeurs dans Malagasy Nature', 'volume12/mn12_12.pdf');

INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(13,'Morphologie pollinique de la flore de la Réserve Spéciale d’Ankarana, Madagascar', 'volume13/mn13_00.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(13,'Morphométrie des fruits et des graines de Ficus (Moraceae) de la forêt sèche de la Réserve Spéciale d’Ankarana, Madagascar', 'volume13/mn13_01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(13,'Euphorbia pseudodidiereoides, une nouvelle euphorbe épineuse du Centre-sud de Madagascar', 'volume13/mn13_02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(13,'A review of Trypanosoma species known from Malagasy vertebrates', 'volume13/mn13_03.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(13,'Revue des stratégies nationales sur la biosécurité et perspectives sur la gestion des espèces exotiques envahissantes à Madagascar', 'volume13/mn13_04.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(13,'Population structure, activity pattern, and microhabitat use of Phelsuma klemmeri at Mandrozo, Madagascar', 'volume13/mn13_05.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(13,'Succès de la reproduction et comportements de Polyboroide rayé (Polyboroides radiatus) dans l’Aire Protégée de Bemanevika, Nord-ouest de Madagascar', 'volume13/mn13_06.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(13,'Les chauves-souris du Paysage Harmonieux Protégé du Complexe Tsimembo Manambolomaty, Région Melaky, Madagascar : diversité et biogéographie', 'volume13/mn13_07.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(13,'Seasonal movements of insectivorous bat species in southwestern Madagascar', 'volume13/mn13_08.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(13,'Les rats dans le monde rural du Centre-est et du Centre-sud de Madagascar : dommages causés et systèmes de contrôle', 'volume13/mn13_09.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(13,'Feeding ecology of the bokiboky, Mungotictis decemlineata (family Eupleridae)', 'volume13/mn13_010.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(13,'Mise à jour de la distribution du crapaud commun d’Asie (Duttaphrynus melanostictus) dans le sud de Toamasina, Madagascar', 'volume13/mn13_011.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(13,'Le bananier aquatique, Typhonodorum madagascariense (famille des Araceae) dans la commune rurale d’Ankililoaka, Sud-ouest de Madagascar', 'volume13/mn13_012.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(13,'Absence of Trypanosoma infection among Hoplobatrachus tigerinus (Amphibia: Dicroglossidae) from Boeny, western Madagascar', 'volume13/mn13_013.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(13,'Format for contributions to Malagasy Nature', 'volume13/mn13_014.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(13,'Notes aux contributeurs dans Malagasy Nature', 'volume13/mn13_015.pdf');

INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(14,'Tribute to Martin Edwin Nicoll (1954-2020): Forty years (1980-2020) of a British scientist dedicated to the conservation of Malagasy biodiversity', 'volume14/mn14_00.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(14,'Effet de l’exploitation minière sur les facteurs productifs comme l’agriculture et la production de charbon de bois et la dynamique de déforestation dans le Sud-ouest de Madagascar', 'volume14/mn14_01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(14,'Etude dendrométrique et dendrochronologique de trois espèces de Cedrelopsis Baillon, (Rutaceae) dans les forêts sèches de l’Ouest de Madagascar', 'volume14/mn14_02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(14,'Resting site choice depends on age in Opisthacanthus madagascariensis (Scorpiones: Hormuridae) in dry deciduous forest, western Madagascar', 'volume14/mn14_03.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(14,'A rapid avifaunal survey of the Mahimborondro Protected Area, northern Madagascar', 'volume14/mn14_04.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(14,'Field body temperatures in the rainforest frog Mantidactylus (Brygoomantis) bellyi from northern Madagascar: Variance and predictors', 'volume14/mn14_05.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(14,'Population dynamics of Lemur catta at selected sleeping sites of Tsimanampesotse National Park', 'volume14/mn14_06.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(14,'Canopy chameleon (Furcifer willsii) consumption by common big-eyed snake (Mimophis mahfalensis) in Fivahona Forest, eastern Madagascar', 'volume14/mn14_07.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(14,'First sighting of the House Crow Corvus splendens on Nosy Be', 'volume14/mn14_08.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(14,'Format for contributions to Malagasy Nature', 'volume14/mn14_09.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(14,'Notes aux contributeurs dans Malagasy Nature', 'volume14/mn14_10.pdf');

INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(15,'Foreword', 'volume15/mn15_00.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(15,'Introduction: The way of the future — new paleosciences research led by Malagasy scientists', 'volume15/mn15_01.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(15,'Applying human niche construction theory to study settlement choice in southwest Madagascar, 16th-19th centuries CE', 'volume15/mn15_02.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(15,'Nontrivial responses of vegetation to compound disturbances: A case study of Malagasy grasslands', 'volume15/mn15_03.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(15,'Adaptation of subsistence strategies of the southwestern Malagasy in the face of climate change', 'volume15/mn15_04.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(15,'The Malagasy monsoon over the Holocene: A review from speleothem δ18Oc records ', 'volume15/mn15_05.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(15,'Paleoecological evidence for late Holocene aridification from the Taolambiby subfossil site of southwestern Madagascar', 'volume15/mn15_06.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(15,'Description of the subfossil crocodylians from a new Late Pleistocene subfossil site (Tsaramody, Sambaina Basin) in central Madagascar', 'volume15/mn15_07.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(15,'Comparing the paleoclimates of northwestern and southwestern Madagascar during the late Holocene: Implications for the role of climate in megafaunal extinction', 'volume15/mn15_08.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(15,'Subfossil birds from a submerged cave in southwestern Madagascar', 'volume15/mn15_09.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(15,'The growth and development of Pachylemur, a large-bodied Lemuridae', 'volume15/mn15_10.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(15,'The stories people tell, and how they can contribute to our understanding of megafaunal decline and extinction in Madagascar', 'volume15/mn15_11.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(15,'Format for contributions to Malagasy Nature', 'volume15/mn15_12.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(15,'Notes aux contributeurs dans Malagasy Nature', 'volume15/mn15_13.pdf');

INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(25,null, '2014_publicationeng.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(26,null, '2014_memoiresandthesis.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(27,null, 'Atlas.pdf');


INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(28,'Tome I: Introduction', 'PA book_t1.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(28,'Tome II: Northern and Eastern Madagascar', 'PA book_t2.pdf');
INSERT INTO public.publicationdetail (idpublication,"name", pdf) VALUES(28,'Tome III: Western and Southern Madagascar - Synthesis', 'PA book_t3.pdf');

INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(1,2);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(1,4);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(1,1);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(1,3);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(1,28);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(1,29);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(1,30);

INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,2);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,4);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,3);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,31);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,32);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,33);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,34);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,35);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,36);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,37);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,38);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,39);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,40);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,41);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,42);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,43);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,44);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,45);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,46);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,47);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,48);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,49);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,50);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,51);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,52);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,53);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,54);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,55);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,56);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,57);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,58);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,59);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,60);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,61);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(2,20);

INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,4);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,1);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,2);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,62);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,63);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,64);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,65);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,66);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,67);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,68);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,69);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,70);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,71);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,72);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,73);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,74);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,75);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(3,76);


INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(29,4);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(30,4);
INSERT INTO public.publicationauthor(idpublication,idauthor)VALUES(30,77);



