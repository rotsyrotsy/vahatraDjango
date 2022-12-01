
INSERT INTO typeactivity (id, type, type_en, type_fr) VALUES (1, 'Visit', 'Visit', 'Visite');
INSERT INTO typeactivity (id, type, type_en, type_fr) VALUES (2, 'Conference', 'Conference', 'Séminaire');
INSERT INTO typeactivity (id, type, type_en, type_fr) VALUES (3, 'Project', 'Project', 'Projet');


--
-- Data for Name: typesubactivity; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO typesubactivity (id, type, idtypeactivity, type_en, type_fr) VALUES (2, 'field schools', 1, 'field schools', 'field schools');
INSERT INTO typesubactivity (id, type, idtypeactivity, type_en, type_fr) VALUES (1, 'science for the people', 1, 'science for the people', 'sciences pour le peuple');
INSERT INTO typesubactivity (id, type, idtypeactivity, type_en, type_fr) VALUES (5, 'Vahatra''s cooperation', 2, 'Vahatra''s cooperation', 'collaboration de Vahatra');
INSERT INTO typesubactivity (id, type, idtypeactivity, type_en, type_fr) VALUES (6, 'grant', 3, 'grant', 'subvention');
INSERT INTO typesubactivity (id, type, idtypeactivity, type_en, type_fr) VALUES (7, 'scientific research', 3, 'scientific research', 'recherches scientifique');
INSERT INTO typesubactivity (id, type, idtypeactivity, type_en, type_fr) VALUES (3, 'biological inventories', 1, 'biological inventories', 'inventaires biologiques');
INSERT INTO typesubactivity (id, type, idtypeactivity, type_en, type_fr) VALUES (4, 'Vahatra''s event', 2, 'Vahatra''s event', 'événement de Vahatra');


--
-- Data for Name: activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (144, 'Disscussion avec Monsieur Jean-Yves Le Drian,  Ministre français de l''Europe et des Affaires étrangères', '<p>A la demande du Ministre lors d''une visite à Madagascar fin février, une réunion a été organisée par l''ambassade de France à Antananarivo afin de discuter avec des individus travaillant dans le secteur privé.</p><p>Certaines questions critiques concernant l''avancement des programmes de conservation à Madagascar. Claude-Anne Gauthier, la représentante nationale de l''Institut de Recherche pour le Développement, a invité Steve Goodman à participer à la réunion.&nbsp;</p><p>Les questions tournent autour de plusieurs thèmes :&nbsp;</p><ul><li>&nbsp;L'' urgence de la préservation globale de l''environnement et de la biodiversité</li><li>&nbsp;La réponse des politiques publiques locales aux besoins</li><li>La nécessité d''une politique de développement durable</li></ul>', '2020-02-27', NULL, 2, 'conference/vahatras-cooperation/disscussion-with-monsieur-jean-yves-le-drian-french-minister-of-europe-and-foreign-affairs-144', 5, '<p>At the request of the Minister during a visit to Madagascar in late February, a meeting was organized by the French Embassy in Antananarivo to discuss with individuals working in the private sector some critical questions concerning the advancement of conservation programs on Madagascar.</p><p>Claude-Anne Gauthier, the national representative of the Institut de Recherche pour le Développement, invited Steve Goodman to take part in the meeting. The questions revolve around several themes:&nbsp;</p><ul><li>The urgency in the overall preservation of the environment and biodiversity</li><li>Do local public policies respond to the needs&nbsp;</li><li>How to remedy the shortcomings identified.</li></ul>', '<p>A la demande du Ministre lors d''une visite à Madagascar fin février, une réunion a été organisée par l''ambassade de France à Antananarivo afin de discuter avec des individus travaillant dans le secteur privé.</p><p>Certaines questions critiques concernant l''avancement des programmes de conservation à Madagascar. Claude-Anne Gauthier, la représentante nationale de l''Institut de Recherche pour le Développement, a invité Steve Goodman à participer à la réunion.&nbsp;</p><p>Les questions tournent autour de plusieurs thèmes :&nbsp;</p><ul><li>&nbsp;L'' urgence de la préservation globale de l''environnement et de la biodiversité</li><li>&nbsp;La réponse des politiques publiques locales aux besoins</li><li>La nécessité d''une politique de développement durable</li></ul>', NULL, NULL, 'Disscussion with Monsieur Jean-Yves Le Drian, french minister of Europe and foreign affairs', 'Disscussion avec Monsieur Jean-Yves Le Drian,  Ministre français de l''Europe et des Affaires étrangères');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (83, 'Climate change', '<p>The intent of this project is to measure possible effects of global climatic change on certain endemic terrestrial vertebrates. This is being accomplished by revisiting three different mountains on the island intensively studied along an elevational gradient over 15 years ago and repeating the inventory methods down to very fine details, such as the same dates and placements of different types of traps.</p><p>While data on the presence and absence of a given taxonomic group will be used in comparing the previous and recent inventories, the unique aspect we have added to the project is employing molecular genetic data.</p><p>We will becomparing shifts in haplotypic frequencies through time and this measure may be directly correlated with global warming, pushing animals to higher altitudes to find preferable biotypes.</p>', '2015-01-01', NULL, 3, 'project/grant/climate-change-83', 6, '<p>The intent of this project is to measure possible effects of global climatic change on certain endemic terrestrial vertebrates. This is being accomplished by revisiting three different mountains on the island intensively studied along an elevational gradient over 15 years ago and repeating the inventory methods down to very fine details, such as the same dates and placements of different types of traps.</p><p>While data on the presence and absence of a given taxonomic group will be used in comparing the previous and recent inventories, the unique aspect we have added to the project is employing molecular genetic data.</p><p>We will becomparing shifts in haplotypic frequencies through time and this measure may be directly correlated with global warming, pushing animals to higher altitudes to find preferable biotypes.</p>', '<p>L’objectif de ce projet est de mesurer les effets possibles des changements climatiques sur certains vertébrés terrestres endémiques. L’approche étant de refaire l’inventaire biologique le long de transects altitudinaux dans trois massifs montagnards de l''île intensément étudiés il y a 15 ans. Les méthodes d’inventaire utilisées, tels que les dates et les emplacements des différents types de pièges, seront respectées au détail près.</p><p>Les anciennes et les nouvelles données sur la présence et l''absence d''un groupe taxonomique donné seront comparées entre elles. L’unique aspect que nous avons ajouté à ce projet est l’utilisation de données génétiques moléculaires.</p><p>Ceci permettra de comparer l''évolution des fréquences haplotypiques à travers le temps et les mesures des aspects qui pourrait être mis en corrélation avec le réchauffement de la planète, poussant les animaux à monter vers des altitudes plus élevées pour trouver les biotypes qui leur conviennent.</p>', NULL, NULL, 'Climate change', 'Changement climatique');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (50, 'Field Schools', NULL, '1997-01-01', NULL, 1, 'visit/field-school/field-schools-50', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (87, 'E-book sur les aires protégées de madagascar et autres outils pour les utilisateurs', '<p>Fin 2015, l''Association Vahatra a reçu une subvention de trois ans de la part du CEPF pour réaliser une revue à grande échelle du système des aires protégées de Madagascar. L''ouvrage bilingue français-anglais en trois volumes intitulé <i>"Les aires protégées terrestres de Madagascar : leur histoire, description et biote"</i> / "<i>Terrestrial protected areas of Madagascar : Leur histoire, description et biote</i>" a été publié par l''Association Vahatra fin 2018.</p><p>Sur la base d''une subvention supplémentaire du CEPF à Strand Life Science (Bangalore, Inde), avec l''association Vahatra en tant que partenaire, un livre électronique d''une version revue et corrigée du livre sur les aires protégées a été produit et est distribué par The University de Chicago (<a href="https://w.bibliovault.org/BV.titles.epl?pc=596&amp;sort=title">https://w.bibliovault.org/BV.titles.epl?pc=596&amp;sort=title</a>). Les volumes imprimés du livre sur les aires protégées sont pour le moins encombrants, pesant près de 7 kg, et la version e-book facilite grandement leur utilisation. De plus, afin de simplifier l''utilisation et d''être plus convivial, des e-books distincts ont été préparés pour les versions française et anglaise.</p><p>D''autres aspects de ce projet comprennent la création d''un site web en malgache, français et anglais, contenant de nombreux détails sur les 98 aires protégées terrestres de Madagascar couvertes par le livre, y compris des listes d''espèces de vertébrés connus de chaque site, ainsi que les moyens pour les scientifiques et naturalistes citoyens de mettre à jour les listes d''espèces téléchargeables en fonction de nouvelles observations et de données publiées. Basé sur la présentation d''un séminaire d''une journée à Antananarivo par Thomas Vattakaven et Prabhakar Rajagopal de Strand Life Science et différents membres de l''Association Vitalia. Life Science et différents membres de l''Association Vahatra aux utilisateurs potentiels du site, d''importantes contributions ont été reçues sur les aspects facilitant l''organisation du site. Le séminaire a eu lieu juste avant le début de l''épidémie de COVID-19 et tout le travail ultérieur sur le projet s''est fait par courrier électronique et par vidéoconférence.</p><p>Un autre aspect important de ce projet a été le téléchargement sur cloud et la fourniture d''un accès gratuit à environ 9000 fichiers pdf utilisés pour la rédaction du livre, qui comprennent une gamme de différents types de publications, des rapports inédits, des mémoires de DEA et de maîtrise, des thèses de doctorat, etc. Le site portail des Aires Protégées de Madagascar est accessible à l''adresse <a href="https://protectedareas.mg/">https://protectedareas.mg/</a>. Ce portail est un outil important pour chercheurs, étudiants et défenseurs de l''environnement à Madagascar et à l''étranger, nous espérons faire évoluer le projet vers des étapes plus avancées.</p><p>Au début du mois de décembre 2021, nos collègues de Strand Life Sciences à Bangalore ont présenté officiellement le portail à Madagascar par vidéoconférence, qui a été suivie d''une réception. L''événement a été couvert par la presse et de la télévision. Le rapport final accepté par le CEPF a été soumis fin 2021 et la première phase du projet est maintenant terminée.</p>', '2015-01-01', NULL, 3, 'project/grant/e-book-on-the-protected-areas-of-madagascar-and-other-user-tools-87', 6, '<p>In late 2015, Association Vahatra received a three-year grant from CEPF to conduct a large-scale review of the protected areas system of Madagascar. The bilingual French-English three volume book entitled "<i>Les aires protégées terrestres de Madagascar : leur histoire, description et biote</i>" / "<i>Terrestrial protected areas of Madagascar: Their history, description and biota</i>" was published by Association Vahatra in late 2018.</p><p> Based on an additional grant from CEPF to Strand Life Science (Bangalore, India), with Association Vahatra as a partner, an e-book of a revised and corrected version of the protected area book has been produced, and is distributed by The University of Chicago Press (<a href="https://w.bibliovault.org/BV.titles.epl?pc=596&amp;sort=title">https://w.bibliovault.org/BV.titles.epl?pc=596&amp;sort=title</a>). The printed volumes of the protected area book are cumbersome to say the least, weighing close to 7 kg, and the e-book version greatly facilitates their utilization. Further, to simplify usage and be more user-friendly, separate e-books have been prepared for the French and English language versions.</p><p>Other aspects of this project included the creation of a website in Malagasy, French, and English containing lots of details on the 98 terrestrial protected areas of Madagascar covered in the book, including up-to-date species lists of vertebrates known from each site, as well as the means for citizen scientists and naturalists to update the downloadable species lists based on new observations and published data. Based on a day-seminar presentation in Antananarivo by Thomas Vattakaven and Prabhakar Rajagopal of Strand Life Science and different members of Association Vahatra to potential users of the site, important input was received on aspects that facilitated the website organization.</p><p>The timing of the seminar was just before the start of the COVID-19 epidemic and all subsequent work on the project has been via email and video conferences. Another important aspect of this project was uploading on to a cloud and providing free access to about 9000 pdf files used in writing the book, which include a range of different types of publications, unpublished reports, previously unavailable DEA and Master’s memoires, Ph.D. theses, and other types of diploma documents from the Malagasy university system. The Madagascar Protected Areas portal site can be accessed at <a href="https://protectedareas.mg/">https://protectedareas.mg/</a>. The portal is an important tool for researchers, students, and conservationists on Madagascar and overseas and we hope to amend the project to more advanced stages.</p><p>In early December 2021, our colleagues at Strand Life Sciences in Bangalore via a video conference formally presented the portal in Madagascar to an assortment of interested individuals physically present at Vahatra or connected via a video conference, which was followed by a reception. The event received press and television coverage. The final accepted report to CEPF was submitted in late 2021 and the first phase of the project has now been completed.</p>', '<p>Fin 2015, l''Association Vahatra a reçu une subvention de trois ans de la part du CEPF pour réaliser une revue à grande échelle du système des aires protégées de Madagascar. L''ouvrage bilingue français-anglais en trois volumes intitulé <i>"Les aires protégées terrestres de Madagascar : leur histoire, description et biote"</i> / "<i>Terrestrial protected areas of Madagascar : Leur histoire, description et biote</i>" a été publié par l''Association Vahatra fin 2018.</p><p>Sur la base d''une subvention supplémentaire du CEPF à Strand Life Science (Bangalore, Inde), avec l''association Vahatra en tant que partenaire, un livre électronique d''une version revue et corrigée du livre sur les aires protégées a été produit et est distribué par The University de Chicago (<a href="https://w.bibliovault.org/BV.titles.epl?pc=596&amp;sort=title">https://w.bibliovault.org/BV.titles.epl?pc=596&amp;sort=title</a>). Les volumes imprimés du livre sur les aires protégées sont pour le moins encombrants, pesant près de 7 kg, et la version e-book facilite grandement leur utilisation. De plus, afin de simplifier l''utilisation et d''être plus convivial, des e-books distincts ont été préparés pour les versions française et anglaise.</p><p>D''autres aspects de ce projet comprennent la création d''un site web en malgache, français et anglais, contenant de nombreux détails sur les 98 aires protégées terrestres de Madagascar couvertes par le livre, y compris des listes d''espèces de vertébrés connus de chaque site, ainsi que les moyens pour les scientifiques et naturalistes citoyens de mettre à jour les listes d''espèces téléchargeables en fonction de nouvelles observations et de données publiées. Basé sur la présentation d''un séminaire d''une journée à Antananarivo par Thomas Vattakaven et Prabhakar Rajagopal de Strand Life Science et différents membres de l''Association Vitalia. Life Science et différents membres de l''Association Vahatra aux utilisateurs potentiels du site, d''importantes contributions ont été reçues sur les aspects facilitant l''organisation du site. Le séminaire a eu lieu juste avant le début de l''épidémie de COVID-19 et tout le travail ultérieur sur le projet s''est fait par courrier électronique et par vidéoconférence.</p><p>Un autre aspect important de ce projet a été le téléchargement sur cloud et la fourniture d''un accès gratuit à environ 9000 fichiers pdf utilisés pour la rédaction du livre, qui comprennent une gamme de différents types de publications, des rapports inédits, des mémoires de DEA et de maîtrise, des thèses de doctorat, etc. Le site portail des Aires Protégées de Madagascar est accessible à l''adresse <a href="https://protectedareas.mg/">https://protectedareas.mg/</a>. Ce portail est un outil important pour chercheurs, étudiants et défenseurs de l''environnement à Madagascar et à l''étranger, nous espérons faire évoluer le projet vers des étapes plus avancées.</p><p>Au début du mois de décembre 2021, nos collègues de Strand Life Sciences à Bangalore ont présenté officiellement le portail à Madagascar par vidéoconférence, qui a été suivie d''une réception. L''événement a été couvert par la presse et de la télévision. Le rapport final accepté par le CEPF a été soumis fin 2021 et la première phase du projet est maintenant terminée.</p>', NULL, NULL, 'E-book on the protected areas of madagascar and other user tools', 'E-book sur les aires protégées de madagascar et autres outils pour les utilisateurs');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (44, 'Field Schools', NULL, '2001-01-01', NULL, 1, 'visit/field-school/field-schools-44', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (38, 'Field Schools', NULL, '2008-01-01', NULL, 1, 'visit/field-school/field-schools-38', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (74, 'Grosphus mavo', '<p>The remarkable diversity of the genus <i>Grosphus simon</i>, 1880 (<i>scorpiones: buthidae</i>) in southern madagascar and in particular in the region of cap sainte marie. <i>Arachnida – Rivista Aracnologica Italiana</i>, 27(1): 2-35.</p>', '2020-01-01', 'endemic scorpion in the extreme south of the island', 3, 'project/scientific-research/grosphus-mavo-74', 7, '<p>The remarkable diversity of the genus <i>Grosphus simon</i>, 1880 (<i>scorpiones: buthidae</i>) in southern madagascar and in particular in the region of cap sainte marie. <i>Arachnida – Rivista Aracnologica Italiana</i>, 27(1): 2-35.</p>', '<p>La remarquable diversité du genre <i>Grosphus simon</i>, 1880 (<i>scorpiones </i>: <i>buthidae</i>) dans le sud de madagascar et en particulier dans la région du cap sainte marie. <i>Arachnida </i>- <i>Rivista Aracnologica Italiana</i>, 27(1) : 2-35.</p>', 'endemic scorpion in the extreme south of the island', 'scorpion endémique dans l''extrême sud de l''île', 'Grosphus mavo', 'Grosphus mavo');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (55, 'Biological inventories', 'Obtaining field data on terrestrial vertebrates for the extension of the Kirindy Mite National Park. In collaboration with WWF and Madagascar national Parks.', '2007-02-01', NULL, 1, 'visit/biological-inventories/biological-inventories-55', 3, 'Obtaining field data on terrestrial vertebrates for the extension of the Kirindy Mite National Park. In collaboration with WWF and Madagascar national Parks.', 'Constitution d''une base de données pour l''extension du Parc National de Kirindy Mitea. En Collaboration avec le WWF et Parcs Nationaux Madagascar', NULL, NULL, 'Biological inventories', 'Inventaires biologiques');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (146, 'Conférence sur la biologie des îles à La Réunion', '<p>L''Université de La Réunion a accueilli la IIIe conférence internationale sur la Biologie des îles, qui se tient tous les trois ans dans un endroit différent dans le monde et rassemble des étudiants et des chercheurs travaillant sur différents aspects de la biologie des îles.</p><p>L''association Vahatra a été invitée par l''université de La Réunion à participer à la conférence qui s''est tenue du 8 au 13 juillet 2019 et à participer à une session de formation spéciale de deux jours pour les étudiants diplômés régionaux, assister à la conférence sur la rédaction d''articles scientifiques et la publication, notamment le choix de la revue, le respect du format de revue proposé, et les différentes étapes à suivre. <br>Grâce à une subvention reçue par l''Université de La Réunion de la part du Conseil régional de LaVahatra Rapport annuel 2019 Réunion via le programme INTERREG Océan Indien 2014-2020 pour un projet dont l''acronyme est "MIMUSOPS" et dont le titre est "Partage des connaissances et promouvoir la biodiversité marine et terrestre dans la région de l''Océan Indien", un soutien financier a été apporté à huit étudiants malgaches de troisième cycle, à post-doc, et trois professeurs de l''Association Vahatra et un autre de l''Université d''Antananarivo pour participer à la réunion et à l''atelier.</p><p>Ces étudiants ont fait des présentations orales et des posters lors de la réunion, Steve Goodman a également donné une conférence plénière lors de la réunion et une autre présentation associée aux extinctions de faune dans les temps géologiques récents.<br>L''association Vahatra a également eu un stand de livres lors de la réunion.<br>Pendant cette rencontre, Achille a été interviewé par le programme de communication régional associé à l''Université de La Réunion, sur l''histoire et les activités de l''association Vahatra en ce qui concerne La Réunion, concernant l''histoire et les activités de Vahatra en matière de le renforcement des capacités et le développement.</p>', '2019-06-08', NULL, 2, 'conference/vahatras-cooperation/island-biology-conference-on-la-reunion-146', 5, '<p>The University of La Réunion was the host of the III International Island Biology conference, which is held every three years at a different place in the world and brings together students and researchers working on different aspects of island biology.</p><p>Association Vahatra was invited by the University of La Réunion to attend the conference held between 8 and 13 July 2019 and take part in a special two day training session for regional graduate students attending the conference on writing scientific papers and publication, including the choose of the journal, respect proposed journal format, and the different steps to follow. <br>Thanks to a grant received by the University of La Réunion from the regional Council of LaVahatra 2019 Annual Report 18 Réunion via the INTERREG Océan Indian 2014-2020 program for a project with the acronym “MIMUSOPS” and under the title “Sharing knowledge and promoting marine and terrestrial biodiversity in the Indian Ocean region” financial support was provided for eight Malagasy graduate students, one postdoc, and three professors from Association Vahatra and another from the University of Antananarivo to attended the meeting and workshop.</p><p>These students gave either oral or poster presentations during the Island Biology meeting. Steve Goodman also gave a plenary lecture at the meeting and another presentation associated with faunal extinctions in recent geological time.<br>Association Vahatra also had a book stall at the meeting. During this meeting, Achille was interviewed by the regional communication program associated with The University of La Réunion, concerning the history and activities of Vahatra with respect to capacity building and development.</p>', '<p>L''Université de La Réunion a accueilli la IIIe conférence internationale sur la Biologie des îles, qui se tient tous les trois ans dans un endroit différent dans le monde et rassemble des étudiants et des chercheurs travaillant sur différents aspects de la biologie des îles.</p><p>L''association Vahatra a été invitée par l''université de La Réunion à participer à la conférence qui s''est tenue du 8 au 13 juillet 2019 et à participer à une session de formation spéciale de deux jours pour les étudiants diplômés régionaux, assister à la conférence sur la rédaction d''articles scientifiques et la publication, notamment le choix de la revue, le respect du format de revue proposé, et les différentes étapes à suivre. <br>Grâce à une subvention reçue par l''Université de La Réunion de la part du Conseil régional de LaVahatra Rapport annuel 2019 Réunion via le programme INTERREG Océan Indien 2014-2020 pour un projet dont l''acronyme est "MIMUSOPS" et dont le titre est "Partage des connaissances et promouvoir la biodiversité marine et terrestre dans la région de l''Océan Indien", un soutien financier a été apporté à huit étudiants malgaches de troisième cycle, à post-doc, et trois professeurs de l''Association Vahatra et un autre de l''Université d''Antananarivo pour participer à la réunion et à l''atelier.</p><p>Ces étudiants ont fait des présentations orales et des posters lors de la réunion, Steve Goodman a également donné une conférence plénière lors de la réunion et une autre présentation associée aux extinctions de faune dans les temps géologiques récents.<br>L''association Vahatra a également eu un stand de livres lors de la réunion.<br>Pendant cette rencontre, Achille a été interviewé par le programme de communication régional associé à l''Université de La Réunion, sur l''histoire et les activités de l''association Vahatra en ce qui concerne La Réunion, concernant l''histoire et les activités de Vahatra en matière de le renforcement des capacités et le développement.</p>', NULL, NULL, 'Island Biology Conference on La Réunion', 'Conférence sur la biologie des îles à La Réunion');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (131, 'The biodiversity of Madagascar', 'The biodiversity of Madagascar: Endemism, introductions



and zoonotic diseases. 6th African Network for Influenza Surveillance and



Epidemiology (ANISE) meeting, March 2018. S.M 2018', '2018-03-01', NULL, 2, 'conference/vahatras-event/the-biodiversity-of-madagascar-131', 4, 'The biodiversity of Madagascar: Endemism, introductions



and zoonotic diseases. 6th African Network for Influenza Surveillance and



Epidemiology (ANISE) meeting, March 2018. S.M 2018', 'La biodiversité de Madagascar : Endémisme, introductions



et zoonoses. 6ème réunion du Réseau africain de surveillance et d''épidémiologie de la grippe



Epidémiologie (ANISE), mars 2018. S.M 2018', NULL, NULL, 'The biodiversity of Madagascar', 'La biodiversité de Madagascar');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (82, 'Uroplatus fivehy', '<p>towards completion of species inventory of smallsized leaf-tailed geckos: two new species of <i>Uroplatus </i>from northern madagascar. <i>Zootaxa</i>, 4892(2): 251-275.</p>', '2020-01-01', 'endemic gecko to a massif in the north of the island', 3, 'project/scientific-research/uroplatus-fivehy-82', 7, '<p>towards completion of species inventory of smallsized leaf-tailed geckos: two new species of <i>Uroplatus </i>from northern madagascar. <i>Zootaxa</i>, 4892(2): 251-275.</p>', '<p>vers l''achèvement de l''inventaire des espèces de geckos à queue de feuille de petite taille : deux nouvelles espèces d''<i>Uroplatus </i>du nord de madagascar. <i>Zootaxa</i>, 4892(2) : 251-275.</p>', 'endemic gecko to a massif in the north of the island', 'gecko endémique à un massif au nord de l''île', 'Uroplatus fivehy', 'Uroplatus fivehy');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (143, 'Personne en vedette : Lovanomenjanahary Marline or "Lova"', '<p>Après avoir terminé son doctorat à l''Université du Cap en 2018 sur la diversité et la biogéographie des bryophytes malgaches sur le massif du Marojejy , Lova est "rentrée à la maison" et a commencé ses études post-doctorales en août 2020.</p><p>Avant de partir pour l''Afrique du Sud, elle a terminé son master au Département de Biologie et Ecologie Végétale de l''Université d''Antananarivo. Sa base post-doctorale locale étant l''Association Vahatra et collaborant également avec le Centre de Conservation de Kew Madagascar, elle continuera son exploration de Madagascar sur une série de sites avec une flore bryophyte inconnue ou mal connue. En utilisant les données sur les bryophytes locales des régions montagnardes de Madagascar, elle sera en mesure d''examiner certaines de ses intérêts sur les processus écologiques et évolutifs qui déterminent l''assemblage des communautés et la biodiversité à l''échelle locale, paysagère et biogéographique.</p><p>En outre, les bryophytes sont présumés être un excellent groupe pourcomprendre l''effet du changement climatiquesur la biodiversité. <br>Le post-doc de Lova est d''une durée de deux ans et repose sur les subventions qu''elle a obtenues de la National Geographic Society, du RoyalRoyal Botanical Garden (Kew) et du Deutscher Akademischer Austauschdienst (DAAD).</p>', '2020-08-01', NULL, 2, 'conference/vahatras-event/person-in-focus-lovanomenjanahary-marline-or-lova-143', 4, '<p>After finishing her Ph.D. at the University of Cape Town in 2018 on the diversity and biogeography of Malagasy bryophytes on the Marojejy Massif in the north, Lova “returned home” and started her post-doctoral studies in August 2020.</p><p>Before leaving for South Africa, she completed her Master’s degree in the Département de Biologie et Ecologie Végétale, Université d’Antananarivo. With her local post-doc base being Association Vahatra and also collaborating with Kew Madagascar Conservation Centre, she will continue her exploration of Madagascar at a series of sites with unknown or poorly known bryophyte floras. Using data on the local bryophytes from montane regions of Madagascar, she will be able to examine some of her broad interests on the ecological and evolutionary processes that determine community assembly and biodiversity pattern at local, landscape, and broader biogeographic scales.</p><p>Further, bryophytes are presumed to be an excellent group to understand the effect of climate change on biodiversity. Lova’s post-doc is for two years and based on grants she has obtained from National Geographic Society, Royal Botanical Garden (Kew), and Deutscher Akademischer Austauschdienst (DAAD).</p>', '<p>Après avoir terminé son doctorat à l''Université du Cap en 2018 sur la diversité et la biogéographie des bryophytes malgaches sur le massif du Marojejy , Lova est "rentrée à la maison" et a commencé ses études post-doctorales en août 2020.</p><p>Avant de partir pour l''Afrique du Sud, elle a terminé son master au Département de Biologie et Ecologie Végétale de l''Université d''Antananarivo. Sa base post-doctorale locale étant l''Association Vahatra et collaborant également avec le Centre de Conservation de Kew Madagascar, elle continuera son exploration de Madagascar sur une série de sites avec une flore bryophyte inconnue ou mal connue. En utilisant les données sur les bryophytes locales des régions montagnardes de Madagascar, elle sera en mesure d''examiner certaines de ses intérêts sur les processus écologiques et évolutifs qui déterminent l''assemblage des communautés et la biodiversité à l''échelle locale, paysagère et biogéographique.</p><p>En outre, les bryophytes sont présumés être un excellent groupe pourcomprendre l''effet du changement climatiquesur la biodiversité. <br>Le post-doc de Lova est d''une durée de deux ans et repose sur les subventions qu''elle a obtenues de la National Geographic Society, du RoyalRoyal Botanical Garden (Kew) et du Deutscher Akademischer Austauschdienst (DAAD).</p>', NULL, NULL, 'Person In focus: Lovanomenjanahary Marline or "Lova"', 'Personne en vedette : Lovanomenjanahary Marline or "Lova"');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (73, 'High spatial resolution cloud climatology', 'High spatial resolution cloud climatology of Madagascar and implications for biodiversity conservation activities', '2015-01-01', NULL, 2, 'seminaire/evenement-de-vahatra/high-spatial-resolution-cloud-climatology-73', 4, 'High spatial resolution cloud climatology of Madagascar and implications for biodiversity conservation activities', 'High spatial resolution cloud climatology of Madagascar and implications for biodiversity conservation activities', NULL, NULL, 'High spatial resolution cloud climatology', 'High spatial resolution cloud climatology');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (89, 'Land use in the Sava region and global health challenges', '<p>This project is based on a grant awarded to Duke University, with Dr. Charles Nunn as the Principal Investigator, in 2019 through the Ecology and Evolution of Infectious Diseases (EEID) program, a joint initiative between the National Institute of Health and the National Science Foundation (NSF). </p><p>This large-scale project aims to understand the linkages between diseases circulating in the foothills of the Marojejy Massif across a habitat mosaic of native forest, agricultural areas, and near villages for which endemic and introduced animals may act as reservoirs and the source of transmission. <br>Association Vahatra is one of the collaborating organizations focused on field capture of bats, endemic and introduced small mammals, and collecting the needed samples for the zoonotic disease analyses.</p><p>Toky Randriamoria, a post-doc in the context of the project, is responsible for the field sampling and seconded by Voahangy and Steve. A new assistant, Rianja Nantenaina Randriamifidisoa, has been engaged to reinforce the field team. Fifaliantsoa Rasolobera, the previous field assistant, is now incorporated in the project as a PhD student and working on small mammal ecology and distribution. </p><p>Three different field camps at the foothills of the massif, each visited during three different seasons for sampling in a range of habitats, have solar panels to provide the needed energy to run a refrigerator to keep samples at the required low temperatures. In association with a considerable range of collaborators studying multiple facets of local circulating zoonotic diseases and parasites, this research project aims to study novel methods to predict disease spread, particularly different infectious diseases being important human health concerns on Madagascar.</p><p>Three Vahatra students from The University of Antananarivo and one from The University of Antsiranana are taking part in this project: Tamby Ranaivoson (PhD student) and Fifaliantsoa Rasolobera (PhD student, mentioned above) working on small mammal ecology and reproduction; Daniel Falimiarintsoa (Masters student) working on bat ecology and habitat associations on the southwestern slopes of the Marojejy Massif; and Johanna Rafanomezanjanahary working on bat ecology and habitat associations on the southwestern slopes of the Marojejy Massif.</p><p>Daniel will present in March 2022 and Johanna presented in March 2021. Fieldwork for this project continues until mid-2023.</p>', '2019-01-01', NULL, 3, 'project/grant/land-use-in-the-sava-region-and-global-health-challenges-89', 6, '<p>This project is based on a grant awarded to Duke University, with Dr. Charles Nunn as the Principal Investigator, in 2019 through the Ecology and Evolution of Infectious Diseases (EEID) program, a joint initiative between the National Institute of Health and the National Science Foundation (NSF). </p><p>This large-scale project aims to understand the linkages between diseases circulating in the foothills of the Marojejy Massif across a habitat mosaic of native forest, agricultural areas, and near villages for which endemic and introduced animals may act as reservoirs and the source of transmission. <br>Association Vahatra is one of the collaborating organizations focused on field capture of bats, endemic and introduced small mammals, and collecting the needed samples for the zoonotic disease analyses.</p><p>Toky Randriamoria, a post-doc in the context of the project, is responsible for the field sampling and seconded by Voahangy and Steve. A new assistant, Rianja Nantenaina Randriamifidisoa, has been engaged to reinforce the field team. Fifaliantsoa Rasolobera, the previous field assistant, is now incorporated in the project as a PhD student and working on small mammal ecology and distribution. </p><p>Three different field camps at the foothills of the massif, each visited during three different seasons for sampling in a range of habitats, have solar panels to provide the needed energy to run a refrigerator to keep samples at the required low temperatures. In association with a considerable range of collaborators studying multiple facets of local circulating zoonotic diseases and parasites, this research project aims to study novel methods to predict disease spread, particularly different infectious diseases being important human health concerns on Madagascar.</p><p>Three Vahatra students from The University of Antananarivo and one from The University of Antsiranana are taking part in this project: Tamby Ranaivoson (PhD student) and Fifaliantsoa Rasolobera (PhD student, mentioned above) working on small mammal ecology and reproduction; Daniel Falimiarintsoa (Masters student) working on bat ecology and habitat associations on the southwestern slopes of the Marojejy Massif; and Johanna Rafanomezanjanahary working on bat ecology and habitat associations on the southwestern slopes of the Marojejy Massif.</p><p>Daniel will present in March 2022 and Johanna presented in March 2021. Fieldwork for this project continues until mid-2023.</p>', '<p>Ce projet est basé sur une subvention accordée à l''Université Duke, avec le Dr. Charles Nunn en tant que chercheur principal, en 2019 par le biais du programme Ecology and Evolution of Infectious Diseases (EEID), une initiative conjointe entre l''Institut national de la santé et la Fondation nationale des sciences (NSF). </p><p>Ce projet à grande échelle a pour objectif de comprendre les liens entre les maladies circulant dans les contreforts du Massif de Marojejy à travers une mosaïque d''habitat de forêts indigènes, de zones agricoles et de villages proches pour lesquels des animaux endémiques et introduits peuvent servir de réservoirs et de sources de transmission. <br>L''Association Vahatra est l''une des organisations collaboratrices qui s''occupe de la capture sur le terrain de chauves-souris, de petits mammifères endémiques et introduits, et la collecte des échantillons nécessaires aux analyses des zoonoses. </p><p>Toky Randriamoria, un post-doc dans le cadre du projet, est responsable de l''échantillonnage sur le terrain et est secondé par Voahangy et Steve. Une nouvelle assistante, Rianja Nantenaina Randriamifidisoa, a été engagée pour renforcer l''équipe de terrain. Fifaliantsoa Rasolobera, l''ancienne assistante de terrain, est maintenant intégrée au projet en tant que doctorante et travaille sur l''écologie et la distribution des petits mammifères. </p><p>Trois camps de terrain différents au pied du massif, chacun visité pendant trois saisons différentes pour l''échantillonnage de divers habitats, sont équipés de panneaux solaires pour fournir l''énergie nécessaire au fonctionnement d''un réfrigérateur pour conserver les échantillons aux basses températures requises. </p><p>En association avec un nombre considérable de collaborateurs qui étudient les multiples facettes des zoonoses et des parasites circulant localement, ce projet de recherche vise à étudier de nouvelles méthodes de prédiction de la la propagation des maladies, en particulier les différentes maladies infectieuses qui sont importantes pour la santé humaine à Madagascar. </p><p>Trois étudiants de Vahatra de l''Université d''Antananarivo et un de l''Université d''Antsiranana participent à ce projet : Tamby Ranaivoson (doctorant) et Fifaliantsoa Rasolobera (doctorant) travaillant sur l''écologie et la reproduction des petits mammifères ; Daniel Falimiarintsoa (étudiant en master) travaillant sur l''écologie des chauves-souris et les l''écologie et les associations d''habitats des chauves-souris sur les pentes sud-ouest du massif de Marojejy ; et Johanna Rafanomezanjanahary travaillant sur l''écologie des chauves-souris et les associations d''habitats.</p><p> Daniel a présenté en mars 2022 et Johanna a présenté en mars 2021. Le travail de terrain pour ce projet se poursuit jusqu''à la mi-2023.</p>', NULL, NULL, 'Land use in the Sava region and global health challenges', 'L''utilisation des sols dans la région de Sava et les défis de la santé mondiale');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (21, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-21', 1, 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (27, 'Field Schools', NULL, '2015-01-01', NULL, 1, 'visit/field-school/field-schools-27', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (29, 'Field Schools', NULL, '2014-01-01', NULL, 1, 'visit/field-school/field-schools-29', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (36, 'Field Schools', NULL, '2009-01-01', NULL, 1, 'visit/field-school/field-schools-36', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (67, 'Fragmentation de l’habitat et diversité génétique', 'Fragmentation de l’habitat et diversité génétique dans l’espace et dans le temps.', '2011-01-01', NULL, 2, 'seminaire/evenement-de-vahatra/fragmentation-de-lhabitat-et-diversite-genetique-67', 4, 'Fragmentation of habitat and genetic diversity in space and time. (Presented in French.) ', 'Fragmentation de l’habitat et diversité génétique dans l’espace et dans le temps.', NULL, NULL, 'Fragmentation and genetic diversity', 'Fragmentation de l’habitat et diversité génétique');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (64, 'Deux nouveaux Traversodontidae du Trias de Madagascar', 'Deux nouveaux Traversodontidae du Trias de Madagascar : implications pour la paléoécologie et la question des vertébrés terrestres malgaches endémiques du Pré-Jurassique. (Présenté en français.)', '2009-01-01', NULL, 2, 'seminaire/evenement-de-vahatra/deux-nouveaux-traversodontidae-du-trias-de-madagascar-64', 4, 'Two new Traversodontidae from the Triassic of Madagascar: implications for paleoecology and the issue of endemic Malagasy terrestrial vertebrates in the Pre-Jurassic. (Presented in French.)', 'Deux nouveaux Traversodontidae du Trias de Madagascar : implications pour la paléoécologie et la question des vertébrés terrestres malgaches endémiques du Pré-Jurassique. (Présenté en français.)', NULL, NULL, 'New Traversodontidae from the Triassic of Madagascar', 'Deux nouveaux Traversodontidae du Trias de Madagascar');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (72, 'ArcGIS', 'Formation sur ArcGIS.', '2014-01-01', NULL, 2, 'seminaire/evenement-de-vahatra/arcgis-72', 4, 'ArcGIS training. (Presented in French.) ', 'Formation sur ArcGIS.', NULL, NULL, 'ArcGIS', 'ArcGIS');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (65, 'Système d''Information Géographique au service de la conservation', 'Le Système d''Information Géographique au service de la conservation : études de cas.', '2010-01-01', NULL, 2, 'seminaire/evenement-de-vahatra/systeme-dinformation-geographique-au-service-de-la-conservation-65', 4, 'Geographic Information Systems at the service of conservation: case studies. (Presented in French.)', 'Le Système d''Information Géographique au service de la conservation : études de cas.', NULL, NULL, 'Geographic Information Systems In Conservation', 'Système d''Information Géographique au service de la conservation');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (40, 'Field Schools', NULL, '2004-01-01', NULL, 1, 'visit/field-school/field-schools-40', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (41, 'Field Schools', NULL, '2003-01-01', NULL, 1, 'visit/field-school/field-schools-41', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (66, 'Effets d''un cyclone  sur Varecia variegata', 'Effets d''un cyclone ou d''une perturbation de l''habitat sur Varecia variegata (reproduction, comportement alimentaire, etc.).', '2011-01-01', NULL, 2, 'seminaire/evenement-de-vahatra/effets-dun-cyclone-sur-varecia-variegata-66', 4, 'Effects of cyclone or habitat disturbance on Varecia variegata (reproduction, feeding behavior, etc.). (Presented in French.)', 'Effets d''un cyclone ou d''une perturbation de l''habitat sur Varecia variegata (reproduction, comportement alimentaire, etc.).', NULL, NULL, 'Effects of cyclone on Varecia variegata', 'Effets d''un cyclone  sur Varecia variegata');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (69, 'Animaux et écosystèmes récemment disparus de Madagascar.', 'Fenêtres sur les animaux extraordinaires et les écosystèmes récemment disparus de Madagascar.', '2012-01-01', NULL, 2, 'seminaire/evenement-de-vahatra/animaux-et-ecosystemes-recemment-disparus-de-madagascar-69', 4, 'Windows into the extraordinary extinct animals and ecosystems of Madagascar. (Presented in French.) ', 'Fenêtres sur les animaux extraordinaires et les écosystèmes récemment disparus de Madagascar.', NULL, NULL, 'Extinct animals and ecosystems of Madagascar', 'Animaux et écosystèmes récemment disparus de Madagascar.');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (68, 'Solution pour les espèces exotiques envahissantes', 'L''impact des espèces exotiques envahissantes sur la biodiversité insulaire - Quelles solutions ?', '2012-01-01', NULL, 2, 'seminaire/evenement-de-vahatra/solution-pour-les-especes-exotiques-envahissantes-68', 4, 'The impact of invasive alien species on island biodiversity - What solutions? (Presented in French.) ', 'L''impact des espèces exotiques envahissantes sur la biodiversité insulaire - Quelles solutions ?', NULL, NULL, 'Solution for invasive alien species', 'Solution pour les espèces exotiques envahissantes');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (63, 'Micro-endemism à Madagascar', 'Une nouvelle hypothèse sur le modèle de Micro-endémisme à Madagascar et de son application à la conservation de la Biodiversité malgache.', '2008-01-01', NULL, 2, 'seminaire/evenement-de-vahatra/micro-endemism-a-madagascar-63', 4, 'A new hypothesis and model of micro-endemism in Madagascar and its application to the conservation of Malagasy biodiversity. (Presented in French.)', 'Une nouvelle hypothèse sur le modèle de Micro-endémisme à Madagascar et de son application à la conservation de la Biodiversité malgache.', NULL, NULL, 'Micro-endemism in Madagascar', 'Micro-endemism à Madagascar');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (86, 'StopRats', '<p>Stoprats est un projet multipartenaires, financé par le Secrétariat du Groupe des États d’Afrique et des Caraïbes dirigé par Natural Resources Institute, Université de Greenwich, Royaume-Uni et incluant différents pays comme la Namibie, Madagascar, Sierra Leone, l’Afrique du Sud, Swaziland et Tanzanie.</p><p>Les objectifs généraux du projet est de renforcer la capacité en science, en technologie et en innovation de la gestion des rongeurs ravageurs et de contribuer au développement durable de l''Afrique et Madagascar afin que ces institutions pourrait avoir des connaissances sur les principaux indicateurs sur la pauvreté à travers les impacts de rongeurs sur les systèmes de production agricole et la sécurité alimentaire.</p><p>Des étudiants de l’Institut des Sciences et Techniques de l’Environnement, Université de Fianarantsoa, des étudiants du département de Biologie Animale de l’Université d’Antananarivo, une équipe de l’Education environnementale et des collègues de l’Institut Pasteur de Madagascar assurent le bon déroulement des activités sur ce projet. En 2014, quinze scientifiques des pays membres du projet Stoprats ont été à Madagascar pour le field school. Ensuite, des séries d’enquêtes ont été conduites dans les hautes terres Malgaches pour avoir des connaissances sur l’ampleur des dégâts des rats et les méthodes utilisées pour lutter contre ces problèmes.</p><p>Des réunions avec les parties prenantes des problèmes des rats, à savoir, le responsable sur l’agriculture, l’élevage et la santé ont été également conduite à Fianarantsoa.<br>Des recherches sur les régimes alimentaires et les habitats utilisés par les rats et des rongeurs endémiques en utilisant les isotopes stables ont été entreprises dans le cadre de ce projet.</p>', '2014-01-01', NULL, 3, 'project/grant/stoprats-86', 6, '<p>Stoprats is a multi-partner project financed by the Secretariat of the African and Caribbean Group, led by Natural Resources Institute, University of Greenwich, United Kingdom and including countries like Namibia, Madagascar, Sierra Leone, South Africa, Swaziland , Tanzania.</p><p>The general objectives of the project are to build capacity in science, in technology and innovation in the management of rodent pests and to contribute to the sustainable development of Africa and Madagascar, so that these institutions could have knowledge of the main indicators of poverty through rodent impacts on agricultural production and food security systems.</p><p>Students from the Institute of Technical Science and Environment, University of Fianarantsoa, from the Animal Biology Department, University of Antananarivo, a team of environmental educators, and colleagues from the Institut Pasteur de Madagascar, provide the smooth running of the activities of this project. In 2014, fifteen scientists from the countries members of Stoprats project were in Madagascar for the field school.</p><p>Then the series of investigations were conducted in the Malagasy highplands to have knowledge about the extent of damage caused by rats and the methods used to fight against these problems. Meetings with stakeholders on the problems of rats, namely, the responsible of the agriculture, breeding and health were also conducted in Fianarantsoa.<br>Researches on diets and habitats used by the rats and endemic rodents, by using stable isotopes have been undertaken as part of this project.</p>', '<p>Stoprats est un projet multipartenaires, financé par le Secrétariat du Groupe des États d’Afrique et des Caraïbes dirigé par Natural Resources Institute, Université de Greenwich, Royaume-Uni et incluant différents pays comme la Namibie, Madagascar, Sierra Leone, l’Afrique du Sud, Swaziland et Tanzanie.</p><p>Les objectifs généraux du projet est de renforcer la capacité en science, en technologie et en innovation de la gestion des rongeurs ravageurs et de contribuer au développement durable de l''Afrique et Madagascar afin que ces institutions pourrait avoir des connaissances sur les principaux indicateurs sur la pauvreté à travers les impacts de rongeurs sur les systèmes de production agricole et la sécurité alimentaire.</p><p>Des étudiants de l’Institut des Sciences et Techniques de l’Environnement, Université de Fianarantsoa, des étudiants du département de Biologie Animale de l’Université d’Antananarivo, une équipe de l’Education environnementale et des collègues de l’Institut Pasteur de Madagascar assurent le bon déroulement des activités sur ce projet. En 2014, quinze scientifiques des pays membres du projet Stoprats ont été à Madagascar pour le field school. Ensuite, des séries d’enquêtes ont été conduites dans les hautes terres Malgaches pour avoir des connaissances sur l’ampleur des dégâts des rats et les méthodes utilisées pour lutter contre ces problèmes.</p><p>Des réunions avec les parties prenantes des problèmes des rats, à savoir, le responsable sur l’agriculture, l’élevage et la santé ont été également conduite à Fianarantsoa.<br>Des recherches sur les régimes alimentaires et les habitats utilisés par les rats et des rongeurs endémiques en utilisant les isotopes stables ont été entreprises dans le cadre de ce projet.</p>', NULL, NULL, 'StopRats', 'StopRats');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (75, 'Haemaphysalis galidiae', '<p>Description d''une nouvelle espèce de <i>Haemaphysalis koch</i>, 1844 (<i>Acari : ixodidae</i>) du sous-groupe H. (<i>Rhipistoma</i>) asiatica, parasite d''un carnivore malgache endémique (famille <i>eupleridae</i>). Systematic Parasitology, 97 : 591-599.</p>', '2020-01-01', 'tique endémique connue des carnivores endémiques', 3, 'project/scientific-research/haemaphysalis-galidiae-75', 7, '<p>Description of a new species of <i>Haemaphysalis koch,</i> 1844 (<i>Acari: ixodidae</i>) from the H. (<i>Rhipistoma</i>) asiatica subgroup, parasite of an endemic malagasy carnivoran (family <i>eupleridae</i>). Systematic Parasitology, 97: 591-599.</p>', '<p>Description d''une nouvelle espèce de <i>Haemaphysalis koch</i>, 1844 (<i>Acari : ixodidae</i>) du sous-groupe H. (<i>Rhipistoma</i>) asiatica, parasite d''un carnivore malgache endémique (famille <i>eupleridae</i>). Systematic Parasitology, 97 : 591-599.</p>', 'endemic tick known from endemic carnivora', 'tique endémique connue des carnivores endémiques', 'Haemaphysalis galidiae', 'Haemaphysalis galidiae');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (20, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-20', 1, 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (23, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-23', 1, 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (42, 'Field Schools', NULL, '2002-01-01', NULL, 1, 'visit/field-school/field-schools-42', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (31, 'Field Schools', NULL, '2013-01-01', NULL, 1, 'visit/field-school/field-schools-31', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (24, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-24', 1, 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (45, 'Field Schools', NULL, '2001-01-01', NULL, 1, 'visit/field-school/field-schools-45', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (52, 'Biological inventories', 'Obtaining field data on terrestrial vertebrates for the action of the "Ala Maiky" project of WWF. In collaboration with WWF.', '2003-02-01', NULL, 1, 'visit/biological-inventories/biological-inventories-52', 3, 'Obtaining field data on terrestrial vertebrates for the action of the "Ala Maiky" project of WWF. In collaboration with WWF.', 'Constitution d''une base de données pour le plan d''action du projet "Ala Maiky" du WWF', NULL, NULL, 'Biological inventories', 'Inventaires biologiques');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (149, 'Personne en vedette:  Steven M. Goodman', '<p>En 2019, Steve Goodman a reçu plusieurs prix. Lors de la cérémonie de clôture cérémonie de clôture de la 56e réunion annuelle de l''Association pour la biologie tropicale et de la conservation à Antananarivo , Steve a été nommé par le conseil de l''association membre honoraire à vie. Cette récompense, qui est la plus haute distinction accordée par l''association lui a été décernée en reconnaissance de ses contributions scientifiques liées à la biodiversité et à la conservation de Madagascar au cours des trois dernières décennies et de ses efforts dans différents aspects de la réunion de Madagascar.</p><p>Lors de la réunion annuelle 2019 de la Société Américaine des Mammalogistes, Steve a reçu le prix Aldo Leopold pour la conservation. Dans la citation du prix, il est mentionné que "Bien que la recherche du Dr. Goodman se concentre sur les mammifères de Madagascar, il a mené des recherches dans de nombreux autres pays Africains. Ses principaux intérêts de recherche sont : les inventaires de inconnues ou mal connues, la description de nouvelles espèces et l''élucidation de l''histoire de l''évolution des mammifères malgaches, l''application des données recueillies dans l''avancement des programmes de conservation et le renforcement des capacités des biologistes malgaches, en particulier des étudiants diplômés. Le Dr Goodman est cofondateur de l''Association Vahatra, une organisation de base qui promeut la conservation de la faune indigène de Madagascar, tout en formant la prochaine génération de scientifiques malgaches en écologie et en biologie de la conservation. Au cours des trois dernières décennies, le Dr Goodman a contribué à la création de toute une génération de biologistes et de scientifiques, une génération entière de biologistes et d''écologistes en formant des dizaines d''étudiants malgaches diplômés. En formant des dizaines d''étudiants malgaches de troisième cycle et des centaines d''étudiants de premier cycle aux techniques écologiques modernes, notamment aux meilleures pratiques en matière de gestion des ressources naturelles, techniques écologiques modernes, y compris les meilleures pratiques pour les enquêtes de terrain, les collections de musée, l''acquisition et l''analyse de données... <br>Chaque lettre de soutien a souligné l''impact profond et durable de son travail, non seulement sur la compréhension de la taxonomie et de la conservation des mammifères, mais aussi sur le peuple malgache."</p>', '2019-12-31', NULL, 2, 'conference/vahatras-event/person-in-focus-steven-m-goodman-149', 4, '<p>In 2019, Steve Goodman received a couple of awards. At the closing ceremony of the 56th annual meeting of Association for Tropical Biology and Conservation in Antananarivo, Steve was named by the association’s council a life-time Honorary Fellow. This award which is the highest honor given by the association was given to him in recognition of his scientific contributions associated with biodiversity and conservation on Madagascar over the past three decades and his efforts in different aspects of the Madagascar meeting.</p><p>During the 2019 annual meeting of the American Society of Mammalogists Steve received the Aldo Leopold Conservation Award. In the citation for the award it was mentioned “Although the primary focus of Dr. Goodman’s research has been on the mammals of Madagascar, he has conducted research in numerous other African countries. His principal research interests are: inventories of unknown or poorly known forested areas, describing new species and elucidating the evolutionary history of Malagasy mammals, application of gathered data in the advancement of conservation programs, and capacity building for Malagasy conservation biologists, particularly graduate students. Dr. Goodman is a co-founder of the Association Vahatra, a grassroots organization that promotes conservation of Madagascar’s native fauna while training the next generation of Malagasy scientists in ecology and conservation biology. Over the last three decades, Dr. Goodman has helped create a whole generation of biologist and conservationists by training dozens of Malagasy graduate students and hundreds of undergraduates in modern ecological techniques, including best practices for field surveys, museum collections, data acquisition, and analysis…<br>Every letter of support highlighted the profound and lasting impact he has had, not only on the understanding of mammalian taxonomy and conservation, but on the Malagasy people as well."</p>', '<p>En 2019, Steve Goodman a reçu plusieurs prix. Lors de la cérémonie de clôture cérémonie de clôture de la 56e réunion annuelle de l''Association pour la biologie tropicale et de la conservation à Antananarivo , Steve a été nommé par le conseil de l''association membre honoraire à vie. Cette récompense, qui est la plus haute distinction accordée par l''association lui a été décernée en reconnaissance de ses contributions scientifiques liées à la biodiversité et à la conservation de Madagascar au cours des trois dernières décennies et de ses efforts dans différents aspects de la réunion de Madagascar.</p><p>Lors de la réunion annuelle 2019 de la Société Américaine des Mammalogistes, Steve a reçu le prix Aldo Leopold pour la conservation. Dans la citation du prix, il est mentionné que "Bien que la recherche du Dr. Goodman se concentre sur les mammifères de Madagascar, il a mené des recherches dans de nombreux autres pays Africains. Ses principaux intérêts de recherche sont : les inventaires de inconnues ou mal connues, la description de nouvelles espèces et l''élucidation de l''histoire de l''évolution des mammifères malgaches, l''application des données recueillies dans l''avancement des programmes de conservation et le renforcement des capacités des biologistes malgaches, en particulier des étudiants diplômés. Le Dr Goodman est cofondateur de l''Association Vahatra, une organisation de base qui promeut la conservation de la faune indigène de Madagascar, tout en formant la prochaine génération de scientifiques malgaches en écologie et en biologie de la conservation. Au cours des trois dernières décennies, le Dr Goodman a contribué à la création de toute une génération de biologistes et de scientifiques, une génération entière de biologistes et d''écologistes en formant des dizaines d''étudiants malgaches diplômés. En formant des dizaines d''étudiants malgaches de troisième cycle et des centaines d''étudiants de premier cycle aux techniques écologiques modernes, notamment aux meilleures pratiques en matière de gestion des ressources naturelles, techniques écologiques modernes, y compris les meilleures pratiques pour les enquêtes de terrain, les collections de musée, l''acquisition et l''analyse de données... <br>Chaque lettre de soutien a souligné l''impact profond et durable de son travail, non seulement sur la compréhension de la taxonomie et de la conservation des mammifères, mais aussi sur le peuple malgache."</p>', NULL, NULL, 'Person in Focus:  Steven M. Goodman', 'Personne en vedette:  Steven M. Goodman');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (84, 'Maladies transmissibles', '<p>Dans ce projet, des suivis viro-sérologiques des populations des vecteurs et des vertébrés sauvages ainsi qu’une évaluation quantitative dans un contexte régional du risque d’introduction et de propagation de la maladie sont réalisés. C’est un projet financé par le CRVOI (Centre de Recherche et de Veille sur les maladies émergentes dans l''Océan Indien) de La Réunion et associe l’équipe de l’Institut Pasteur de Madagascar (IPM) qui travaillent depuis plusieurs années sur les mécanismes de transmission des nombreuses maladies.</p><p>Les objectifs spécifiques de ce projet sont de : évaluer l’intensité de la circulation virale et les périodes de circulation dans une zone pilote de Madagascar, identifier les réservoirs sauvages potentiels du virus à Madagascar, établir un bilan épidémiologique à Madagascar, identifier le/les modes d’introduction et de transmission potentiels à Madagascar, et évaluer le risque d’endémisation de la maladie.</p>', '2015-01-01', NULL, 3, 'project/grant/transmissible-diseases-84', 6, '<p>In this project, followed viro-serological and vector populations of wild vertebrates and a quantitative assessment on a regional risk of introduction and spread of the disease are done. This is a project funded by the CRVOI (Centre for Research and Watch on emerging diseases in the Indian Ocean) Reunion and associated team from the Institut Pasteur de Madagascar (IPM).</p><p>The latter has been working for several years on transmission mechanisms of many diseases. The specific objectives of this project are to assess the intensity of viral circulation and circulation periods in a pilot area of Madagascar, identify potential wild reservoirs of the virus in Madagascar, establish an epidemiological assessment in Madagascar, identify the various potential modes of introduction and transmission in Madagascar, and assess the risk of endemicity of the disease.</p>', '<p>Dans ce projet, des suivis viro-sérologiques des populations des vecteurs et des vertébrés sauvages ainsi qu’une évaluation quantitative dans un contexte régional du risque d’introduction et de propagation de la maladie sont réalisés. C’est un projet financé par le CRVOI (Centre de Recherche et de Veille sur les maladies émergentes dans l''Océan Indien) de La Réunion et associe l’équipe de l’Institut Pasteur de Madagascar (IPM) qui travaillent depuis plusieurs années sur les mécanismes de transmission des nombreuses maladies.</p><p>Les objectifs spécifiques de ce projet sont de : évaluer l’intensité de la circulation virale et les périodes de circulation dans une zone pilote de Madagascar, identifier les réservoirs sauvages potentiels du virus à Madagascar, établir un bilan épidémiologique à Madagascar, identifier le/les modes d’introduction et de transmission potentiels à Madagascar, et évaluer le risque d’endémisation de la maladie.</p>', NULL, NULL, 'Transmissible diseases', 'Maladies transmissibles');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (53, 'Biological inventories', 'Obtaining data on terrestrial organisms to help with the management of a new marine protected area. In collaboration with WWF.', '2005-09-01', NULL, 1, 'visit/biological-inventories/biological-inventories-53', 3, 'Obtaining data on terrestrial organisms to help with the management of a new marine protected area. In collaboration with WWF.', 'Constitution d''une base de données pour le plan d''aménagement d''une nouvelle aire protégée marine à Madagascar. En collaboration avec le WWF', NULL, NULL, 'Biological inventories', 'Inventaires biologiques');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (54, 'Biological inventories', 'To understand patterns of terrestrial animal distribution in this forested corridor, evaluation of remaining natural habitats, and the important of the remaining forest for the conservation of biodiversity. In collaboration with WWF and Fanamby.', '2005-11-01', NULL, 1, 'visit/biological-inventories/biological-inventories-54', 3, 'To understand patterns of terrestrial animal distribution in this forested corridor, evaluation of remaining natural habitats, and the important of the remaining forest for the conservation of biodiversity. In collaboration with WWF and Fanamby.', 'Etude de la représentativité et l''hétérogéneité du couloir, évaluation des habitats et détermination du rôle du couloir forestier dans la conservation de la biodiversité. En collaboration avec WWF et Fanamby', NULL, NULL, 'Biological inventories', 'Inventaires biologiques');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (91, 'Diversité et dynamique de transmission des agents infectieux chez les chauves-souris malgaches', '<p>Les objectifs scientifiques de ce projet sont de caractériser la diversité des agents infectieux circulant dans les populations de chauves-souris du nord de Madagascar et d''étudier la dynamique temporelle de la transmission, notamment au sein des colonies de reproduction et les colonies de jour.&nbsp;</p><p>Le financement est basé sur une subvention du Fonds Européen de Développement Régional (FEDER). L''étude en collaboration avec le Dr Camille Lebarbenchon du Processus Infectieux en Milieu Insulaire Tropical (PIMIT) et associé à l''Université de La Réunion, , et avec un post-doc malgache, Riana Ramanantsalama, qui a fait son doctorat avec Vahatra., emploie des échantillons de chauves-souris capturées/marquées/relâchées pour des analyses en laboratoire. Pour chaque chauve-souris, les échantillons comprennent des prélèvements oraux et rectaux, ainsi que des ectoparasites.&nbsp;</p><p>Dans le plan initial du travail de terrain, il était proposé que chaque colonie d''étude, y compris les grottes de l''Ankarana et les sites de perchage synanthropiques dans les bâtiments dans la ville voisine d''Ambilobe, soient visitées tous les 3-4 mois pour étudier les changements saisonniers dans la dynamique temporelle de l''infection au niveau de la population. Les individus de la chauve-souris frugivore<i> Rousettus madagascariensis </i>(famille des <i>Pteropodidae</i>)vivant dans les grottes d''Ankarana sont marqués avec des anneaux numérotés de façon unique afin d''étudier la dynamique de l''infection au niveau des individus.&nbsp;</p><p>Avec le confinement de 2020, seules deux visites ont été effectuées sur les sites d''étude cette année-là et nous n''avons pu reprendre le travail de terrain que fin 2021. En raison de tous les retards liés à COVID-19, une extension du projet a été demandée à l''organisme subventionnaire.</p>', '2021-12-01', NULL, 3, 'project/grant/diversity-and-transmission-dynamics-of-infectious-agents-in-malagasy-bats-91', 6, '<p>The scientific objectives of this project are to characterize the diversity of infectious agents circulating in bat populations of northern Madagascar and to study the temporal dynamics of transmission, particularly within breeding and day-roosting colonies.</p><p>Funding is based on a grant from the Fonds Européen de Développement Régional (FEDER). The study in collaboration with Dr. Camille Lebarbenchon from the Processus Infectieux en Milieu Insulaire Tropical (PIMIT) laboratory and associated with The University of La Reunion, and with a Malagasy post-doc, Riana Ramanantsalama, who did his PhD with Vahatra, employs samples of captured/marked/released bats for laboratory analysis.</p><p>For each bat, samples include oral and rectal swabs, as well as ectoparasites. In the original plan for fieldwork, it was proposed that each study colony, including caves in Ankarana and synanthropic roost sites in buildings in the nearby town of Ambilobe, to be visited every 3-4 months to study seasonal shifts in the temporal dynamics of infection at the population level. Individuals of the fruit bat <i>Rousettus madagascariensis</i> (family <i>Pteropodidae</i>) living in the caves of Ankarana are marked with uniquely numbered rings in order to study infection dynamics at the level of individuals. With the lockdown of 2020, only two visits were conducted to the study sites in that year and we were only able to restart the fieldwork in late 2021.</p><p>Because of all of the COVID-19 related delays, an extension of the project has been requested from the granting agency. We are still awaiting that decision.</p>', '<p>Les objectifs scientifiques de ce projet sont de caractériser la diversité des agents infectieux circulant dans les populations de chauves-souris du nord de Madagascar et d''étudier la dynamique temporelle de la transmission, notamment au sein des colonies de reproduction et les colonies de jour.&nbsp;</p><p>Le financement est basé sur une subvention du Fonds Européen de Développement Régional (FEDER). L''étude en collaboration avec le Dr Camille Lebarbenchon du Processus Infectieux en Milieu Insulaire Tropical (PIMIT) et associé à l''Université de La Réunion, , et avec un post-doc malgache, Riana Ramanantsalama, qui a fait son doctorat avec Vahatra., emploie des échantillons de chauves-souris capturées/marquées/relâchées pour des analyses en laboratoire. Pour chaque chauve-souris, les échantillons comprennent des prélèvements oraux et rectaux, ainsi que des ectoparasites.&nbsp;</p><p>Dans le plan initial du travail de terrain, il était proposé que chaque colonie d''étude, y compris les grottes de l''Ankarana et les sites de perchage synanthropiques dans les bâtiments dans la ville voisine d''Ambilobe, soient visitées tous les 3-4 mois pour étudier les changements saisonniers dans la dynamique temporelle de l''infection au niveau de la population. Les individus de la chauve-souris frugivore<i> Rousettus madagascariensis </i>(famille des <i>Pteropodidae</i>)vivant dans les grottes d''Ankarana sont marqués avec des anneaux numérotés de façon unique afin d''étudier la dynamique de l''infection au niveau des individus.&nbsp;</p><p>Avec le confinement de 2020, seules deux visites ont été effectuées sur les sites d''étude cette année-là et nous n''avons pu reprendre le travail de terrain que fin 2021. En raison de tous les retards liés à COVID-19, une extension du projet a été demandée à l''organisme subventionnaire.</p>', NULL, NULL, 'Diversity and transmission dynamics of infectious agents in malagasy bats', 'Diversité et dynamique de transmission des agents infectieux chez les chauves-souris malgaches');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (81, 'Uroplatus fangorn', '<p>vers l''achèvement de l''inventaire des espèces de geckos à queue de feuille de petite taille : deux nouvelles espèces d''<i>Uroplatus </i>du nord de madagascar. <i>Zootaxa</i>, 4892(2) : 251-275.</p>', '2020-01-01', 'gecko endémique à un massif au nord de l''île', 3, 'project/scientific-research/uroplatus-fangorn-81', 7, '<p>towards completion of species inventory of smallsized leaf-tailed geckos: two new species of <i>Uroplatus </i>from northern madagascar. <i>Zootaxa</i>, 4892(2): 251-275.</p>', '<p>vers l''achèvement de l''inventaire des espèces de geckos à queue de feuille de petite taille : deux nouvelles espèces d''<i>Uroplatus </i>du nord de madagascar. <i>Zootaxa</i>, 4892(2) : 251-275.</p>', 'endemic gecko to a massif in the north of the island', 'gecko endémique à un massif au nord de l''île', 'Uroplatus fangorn', 'Uroplatus fangorn');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (150, 'Personne en vedette: Marie Jeanne Raherilalao', '<p>Après avoir terminé son doctorat à l''Université d''Antananarivo en 2006 et dans le cadre du programme de formation en écologie du WWF-Madagascar, qui a été précurseur de la création de l''Association Vahatra, sur la répartition et la biogéographie des oiseaux dans les Hautes Terres Centrales de Madagascar et les zones voisines, Marie Jeanne s''est engagée dans une série d''études ornithologiques de terrain et de projets liés à la conservation.</p><p> Elle est l''un des membres fondateurs de l''Association Vahatra et a joué un rôle majeur comme coéditeur de Malagasy Nature et de la série Guides de la diversité biologique de Madagascar. Notamment en tant que co-auteur d''un ouvrage sur l''histoire naturelle des oiseaux endémiques malgaches. Elle a également coédité le livre sur les aires protégées terrestres de Madagascar. En 2008, elle a été recrutée comme maître de conférences dans le département de zoologie et de biodiversité animale de l''Université d''Antananarivo, où elle donne des cours sur une grande variété de sujets et est responsable de l''encadrement d''un nombre considérable d''étudiants malgaches diplômés.</p><p> En juin 2021, Marie Jeanne a présenté son mémoire d''"Habilitation à Diriger des recherches" (HDR) à l''Université d''Antananarivo, qui est le diplôme scientifique le plus élevé dans le système académique européen et malgache. Le titre de son mémoire, "Réconcilier la recherche et le renforcement des capacités pour la pour la conservation de la biodiversité à Madagascar", montre clairement sa vision visionnaire de la recherche à Madagascar et de l''utilisation des technologies associées pour faire avancer la conservation sur l''île.</p><p>Nous souhaitons ici souligner sa contribution à Zoologie malgache et aux futures générations de chercheurs malgaches et lui adresser nos félicitations pour la présentation de son HDR.</p>', '2021-10-01', NULL, 2, 'conference/vahatras-event/person-in-focus-marie-jeanne-raherilalao-150', 4, '<p>After finishing her PhD at The University of Antananarivo in 2006 and in the context of the Ecology Training Program of WWF-Madagascar, which was the precursor to the creation of Association Vahatra, on the distribution and biogeography of birds in the Madagascar Central Highlands and neighboring areas, Marie Jeanne was engaged in a range of different ornithological field studies and different conservation-related projects.</p><p>She is one of the founding members of Association Vahatra and has played a major role as co-editor of Malagasy Nature and the Guides to the biological diversity of Madagascar series, including co-authoring a book on the natural history of Malagasy endemic birds. She also co-edited the Madagascar terrestrial protected areas book.</p><p>In 2008, she was recruited as lecturer in the Zoology and Animal Biodiversity Department at The University of Antananarivo, where she gives courses on a wide diversity of subjects and is responsible for the mentorship of a considerable number of Malagasy graduate students In June 2021.</p><p> Marie Jeanne presented her “Habilitation à Diriger des Recherches” (HDR) memoir at The University of Antananarivo, which is the highest scientific diploma in the European and Malagasy academic system. The title of her memoir, “Reconciling research and capacity building for the conservation of biodiversity in Madagascar”, clearly shows her visionary view of research on Madagascar and using associated data for advancing conservation on the island. </p><p>We wish here to highlight her contribution to Malagasy Zoology and future generations of Malagasy researchers and send our congratulations for presenting her HDR.</p>', '<p>Après avoir terminé son doctorat à l''Université d''Antananarivo en 2006 et dans le cadre du programme de formation en écologie du WWF-Madagascar, qui a été précurseur de la création de l''Association Vahatra, sur la répartition et la biogéographie des oiseaux dans les Hautes Terres Centrales de Madagascar et les zones voisines, Marie Jeanne s''est engagée dans une série d''études ornithologiques de terrain et de projets liés à la conservation.</p><p> Elle est l''un des membres fondateurs de l''Association Vahatra et a joué un rôle majeur comme coéditeur de Malagasy Nature et de la série Guides de la diversité biologique de Madagascar. Notamment en tant que co-auteur d''un ouvrage sur l''histoire naturelle des oiseaux endémiques malgaches. Elle a également coédité le livre sur les aires protégées terrestres de Madagascar. En 2008, elle a été recrutée comme maître de conférences dans le département de zoologie et de biodiversité animale de l''Université d''Antananarivo, où elle donne des cours sur une grande variété de sujets et est responsable de l''encadrement d''un nombre considérable d''étudiants malgaches diplômés.</p><p> En juin 2021, Marie Jeanne a présenté son mémoire d''"Habilitation à Diriger des recherches" (HDR) à l''Université d''Antananarivo, qui est le diplôme scientifique le plus élevé dans le système académique européen et malgache. Le titre de son mémoire, "Réconcilier la recherche et le renforcement des capacités pour la pour la conservation de la biodiversité à Madagascar", montre clairement sa vision visionnaire de la recherche à Madagascar et de l''utilisation des technologies associées pour faire avancer la conservation sur l''île.</p><p>Nous souhaitons ici souligner sa contribution à Zoologie malgache et aux futures générations de chercheurs malgaches et lui adresser nos félicitations pour la présentation de son HDR.</p>', NULL, NULL, 'Person In Focus: Marie Jeanne Raherilalao', 'Personne en vedette: Marie Jeanne Raherilalao');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (79, 'Mantidactylus ambony', '<p>‘Barcode fishing’ for archival DNA from historical type material overcomes taxonomic hurdles, enabling the description of a new frog species. Scientific Reports, 10, 19109 (2020).</p>', '2020-01-01', 'endemic to a massif in the extreme north of the island', 3, 'project/scientific-research/mantidactylus-ambony-79', 7, '<p>‘Barcode fishing’ for archival DNA from historical type material overcomes taxonomic hurdles, enabling the description of a new frog species. Scientific Reports, 10, 19109 (2020).</p>', 'La " pêche au code-barres " pour l''ADN d''archives provenant de matériel de type historique surmonte les obstacles taxonomiques, permettant la description d''une nouvelle espèce de grenouille. Rapports scientifiques, 10, 19109 (2020).', 'endemic to a massif in the extreme north of the island', 'endémique d''un massif à l''extrême nord de l''île', 'Mantidactylus ambony', 'Mantidactylus ambony ');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (48, 'Field Schools', NULL, '1997-01-01', NULL, 1, 'visit/field-school/field-schools-48', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (49, 'Field Schools', NULL, '1997-01-01', NULL, 1, 'visit/field-school/field-schools-49', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (51, 'Field Schools', NULL, '1996-01-01', NULL, 1, 'visit/field-school/field-schools-51', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (90, 'World Heritage Restoration: Atsinanana Rainforests', '<p>The moist evergreen moist evergreen forests of the eastern region of Madagascar are home to an exceptional diversity of plants and animals and these ecosystems play a fundamental role in maintaining biodiversity and ecological processes.</p><p>Their integration some years back within UNESCO’s network of World Heritage Sites, the series of protected areas known as “The Rainforest of the Atsinanana”, was a crucial step in supporting efforts to preserve their Outstanding Universal Values. Unfortunately, these ecosystems for different economic and cultural reasons are often subject to anthropogenic pressures. The 2009 political crisis on Madagascar, a period of near total anarchy in certain areas of the island, allowed people to rush massively into protected areas for illegal exploitation of rosewoods, gold panning, charcoal production, and to acquire new agricultural lands via deforestation.The integrity of the biological diversity of The Rainforest of the Atsinanana and their Outstanding Universal Values have been seriously threatened. The magnitude of the situation was such that UNESCO’s World Heritage Committee decided in 2010 to classify The Rainforest of the Atsinanana in the World Heritage list of sites “In Danger”. <br>The purpose of this current project financed at the level of several million US dollars by the Korea International Cooperation Agency (KOICA) is to rectify the situation through several different approaches:</p><ul><li>economic development,</li><li>public education,</li><li>studies of the regional biota.</li></ul><p>The role of Association Vahatra in the project is to examine patterns of biotic diversity at the focal sites through biological inventories, with a focus on change through time. Vahatra scientists and students surveyed several of these sites some 20-25 years ago and comparisons of possible change at the scale of several decades can be made, and if such changes have taken place, to determine the probable causal reasons. Finally, with biodiversity data across nearly 20+ years, it will be possible to strengthen protection of the sites and better understanding different pressures. Another aspect is to install a system of ecological monitoring sites and automated meteorological stations to provide measures of climate change in the future.</p><p>In early 2021, in the context of this BIOCOM project, a Vahatra field team, together with nine students from The University of Antsiranana and another individual working for the protected area manager took part in a field school and conducted an eco-biological evaluation of the dry forests of Montagne de Français in the far north. The results of this field project have been accepted for publication in Malagasy Nature and will appear in 2023. Further, over the course of nearly eight weeks in October and November 2021, a large field team conducted an elevational transect of Marojejy, one of The Rainforest of the Atsinanana sites.</p><p>The survey repeated in fine detail the transect of 1996 and across different groups of organisms. <br>This was a large-scale logistic exercise, with five camps between the lowland forest and summital zone of the massif, and with displacements of over 40 porters at a time to carry gear, supplies, and food. The material included solar panels, a large battery, and a small refrigerator to maintain collected samples from forest-dwelling mammals on the massif and tie-in to the Duke University (NIH and NSF) zoonotic disease research project mentioned above.</p><p>Vahatra and colleagues are in the process of analyzing data to understand patterns of possible change through time and the scientific results will be available in the near future.</p><p>In october 2022 the Vahatra team has redone another elevational transect in the Andohahela protected area in the same fashion as Marojejy and part of the The Rainforest of the Atsinanana.</p>', '2021-01-01', NULL, 3, 'project/grant/world-heritage-restoration-atsinanana-rainforests-90', 6, '<p>The moist evergreen moist evergreen forests of the eastern region of Madagascar are home to an exceptional diversity of plants and animals and these ecosystems play a fundamental role in maintaining biodiversity and ecological processes.</p><p>Their integration some years back within UNESCO’s network of World Heritage Sites, the series of protected areas known as “The Rainforest of the Atsinanana”, was a crucial step in supporting efforts to preserve their Outstanding Universal Values. Unfortunately, these ecosystems for different economic and cultural reasons are often subject to anthropogenic pressures. The 2009 political crisis on Madagascar, a period of near total anarchy in certain areas of the island, allowed people to rush massively into protected areas for illegal exploitation of rosewoods, gold panning, charcoal production, and to acquire new agricultural lands via deforestation.The integrity of the biological diversity of The Rainforest of the Atsinanana and their Outstanding Universal Values have been seriously threatened. The magnitude of the situation was such that UNESCO’s World Heritage Committee decided in 2010 to classify The Rainforest of the Atsinanana in the World Heritage list of sites “In Danger”. <br>The purpose of this current project financed at the level of several million US dollars by the Korea International Cooperation Agency (KOICA) is to rectify the situation through several different approaches:</p><ul><li>economic development,</li><li>public education,</li><li>studies of the regional biota.</li></ul><p>The role of Association Vahatra in the project is to examine patterns of biotic diversity at the focal sites through biological inventories, with a focus on change through time. Vahatra scientists and students surveyed several of these sites some 20-25 years ago and comparisons of possible change at the scale of several decades can be made, and if such changes have taken place, to determine the probable causal reasons. Finally, with biodiversity data across nearly 20+ years, it will be possible to strengthen protection of the sites and better understanding different pressures. Another aspect is to install a system of ecological monitoring sites and automated meteorological stations to provide measures of climate change in the future.</p><p>In early 2021, in the context of this BIOCOM project, a Vahatra field team, together with nine students from The University of Antsiranana and another individual working for the protected area manager took part in a field school and conducted an eco-biological evaluation of the dry forests of Montagne de Français in the far north. The results of this field project have been accepted for publication in Malagasy Nature and will appear in 2023. Further, over the course of nearly eight weeks in October and November 2021, a large field team conducted an elevational transect of Marojejy, one of The Rainforest of the Atsinanana sites.</p><p>The survey repeated in fine detail the transect of 1996 and across different groups of organisms. <br>This was a large-scale logistic exercise, with five camps between the lowland forest and summital zone of the massif, and with displacements of over 40 porters at a time to carry gear, supplies, and food. The material included solar panels, a large battery, and a small refrigerator to maintain collected samples from forest-dwelling mammals on the massif and tie-in to the Duke University (NIH and NSF) zoonotic disease research project mentioned above.</p><p>Vahatra and colleagues are in the process of analyzing data to understand patterns of possible change through time and the scientific results will be available in the near future.</p><p>In october 2022 the Vahatra team has redone another elevational transect in the Andohahela protected area in the same fashion as Marojejy and part of the The Rainforest of the Atsinanana.</p>', 'Les forêts humides sempervirentes de la région orientale de Madagascar abritent une diversité exceptionnelle de plantes et d''animaux.

Madagascar abritent une diversité exceptionnelle de plantes et d''animaux.

ces écosystèmes jouent un rôle fondamental dans le maintien de la biodiversité et des

processus écologiques. Leur intégration, il y a quelques années, dans le

de l''UNESCO, la série d''aires protégées connue sous le nom de "Forêt tropicale de l''Est de Madagascar"  a été une étape cruciale pour soutenir les efforts visant à préserver leurs valeurs universelles exceptionnelles.



Malheureusement, ces écosystèmes, pour différentes raisons économiques et culturelles, sont souvent soumis à des

pressions anthropiques. La crise politique de 2009 à Madagascar, une période

période d''anarchie quasi-totale dans certaines régions de l''île, a permis à la population de se précipiter massivement dans les aires protégées pour les exploiter illégalement.

dans les zones protégées pour l''exploitation illégale de bois de rose, l''orpaillage, la production de charbon de bois, etc.  et d''acquérir de nouvelles terres agricoles via la déforestation.



L''intégrité de la diversité biologique de la forêt tropicale des

l''Atsinanana et leurs valeurs universelles exceptionnelles ont été sérieusement

menacées. L''ampleur de la situation était telle que le Comité du patrimoine mondial de l''UNESCO a décidé en 2010 de classer la Forêt tropicale de

l''Atsinanana dans la liste du patrimoine mondial des sites "en danger". 

L''objectif de ce projet actuel financé à hauteur de plusieurs millions de dollars américains

par l''Agence coréenne de coopération internationale (KOICA) est de remédier à la

situation à travers plusieurs approches différentes : développement économique

l''éducation du public et l''étude du biote régional.



Le rôle de l''Association Vahatra dans le projet est d''examiner les modèles de 

diversité biotique sur les sites focaux par le biais d''inventaires biologiques, en se concentrant

l''évolution dans le temps. Les scientifiques et les étudiants de Vahatra ont étudié 

plusieurs de ces sites il y a environ 20-25 ans et des comparaisons des changements possibles à l''échelle de plusieurs décennies peuvent être faites.

l''échelle de plusieurs décennies et, 

si de tels changements ont eu lieu, d''en déterminer les causes probables.

Enfin, avec des données sur la biodiversité

données sur la biodiversité sur près de 20+ ans, il sera possible de renforcer la protection des sites et de mieux comprendre les différentes pressions.



Un autre aspect est 

l''installation d''un système de sites de surveillance écologique et de stations 

météorologiques automatisées pour fournir des mesures du changement climatique à l''avenir.

Au début de l''année 2021, dans le cadre de ce projet BIOCOM, une équipe de terrain Vahatra

, ainsi que neuf étudiants de l''Université d''Antsiranana et une autre personne travaillant pour le gestionnaire de l''aire protégée, ont participé à une campagne de terrain et ont effectué une évaluation éco-biologique des forêts sèches de la Montagne de Français dans l''extrême nord.



Les résultats de ce projet de terrain

ont été acceptés pour publication

dans Malagasy Nature et paraîtront

en 2023. En outre, pendant

près de huit semaines en octobre et novembre

novembre 2021, une grande équipe de terrain

a réalisé un transect en altitude

de Marojejy, l''un des sites de la forêt pluviale

des sites d''Atsinanana. 



L''enquête

a répété dans les moindres détails le transect de

1996 et à travers différents groupes de

organismes. Il s''agissait d''un exercice logistique à grande échelle.

logistique à grande échelle, avec cinq camps entre la forêt de plaine et la zone sommitale du massif, et avec des déplacements de plus de 40 porteurs à la fois pour transporter le matériel et la nourriture.



Le matériel comprenait des panneaux solaires, une grande batterie, et un petit réfrigérateur

pour conserver les échantillons collectés sur les mammifères vivant en forêt sur le massif et

mammifères vivant dans les forêts du massif et de faire le lien avec le projet de recherche sur les zoonoses 

de l''Université Duke (NIH et NSF) mentionné ci-dessus. 

Vahatra et ses collègues sont en train d''analyser les données pour comprendre les modèles de changement possible à travers le temps et les résultats scientifiques seront disponibles dans un avenir proche.



À la fin de l''année 2022

l''équipe de Vahatra refera un autre transect altimétrique dans la zone protégée d''Andohahela, de la même manière que Marojejy et dans le cadre de la forêt tropicale de l''Atsinanana.

de l''Atsinanana.', NULL, NULL, 'World Heritage Restoration: Atsinanana Rainforests', 'Restauration Patrimoine mondial: Forêts humides de l’Atsinanana');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (133, 'Comparaison des taux d''évolution phénotypique', 'Comparaison des taux d''évolution phénotypique', '2018-08-01', NULL, 2, 'conference/vahatras-cooperation/comparison-of-rates-of-phenotypic-evolution-133', 5, 'Comparison of rates of phenotypic evolution in two Malagasy adaptive

radiations. 27th International Ornithological Congress, Vancouver, Canada,

August 2018.', 'Comparaison des taux d''évolution phénotypique', NULL, NULL, 'Comparison of rates of phenotypic evolution', 'Comparaison des taux d''évolution phénotypique');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (80, 'Platypelis ranjomena', '<p>genetic variability and partial integrative revision of <i>Platypelis </i>frogs (<i>microhylidae</i>) with red flash marks from eastern madagascar. Vertebrate Zoology, 70(2): 141-156</p>', '2020-01-01', 'endemic the central east and northeastern madagascar', 3, 'project/scientific-research/platypelis-ranjomena-80', 7, '<p>genetic variability and partial integrative revision of <i>Platypelis </i>frogs (<i>microhylidae</i>) with red flash marks from eastern madagascar. Vertebrate Zoology, 70(2): 141-156</p>', '<p>variabilité génétique et révision intégrative partielle des grenouilles <i>Platypelis </i>(<i>microhylidae</i>) avec des marques d''éclair rouge de l''est de madagascar. Zoologie des vertébrés, 70(2) : 141-156</p>', 'endemic the central east and northeastern madagascar', 'endémique du centre-est et du nord-est de madagascar', 'Platypelis ranjomena', 'Platypelis ranjomena');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (76, 'Ixodes soarimalalae', '<p>Description de trois nouvelles espèces d''<i>Ixodes latreille</i>, 1795 (<i>acari : ixodidae</i>), parasites des tenrecs (<i>Afrotheria : tenrecidae</i>) à Madagascar. Systematic Parasitology, 97 : 623-637.</p>', '2020-01-01', 'tique endémique connue des tenrecs musaraignes malgaches et nommée d''après Voahangy Soarimalala', 3, 'project/scientific-research/ixodes-soarimalalae-76', 7, '<p>Description of three new species of<i> Ixodes latreille</i>, 1795 (<i>acari: ixodidae</i>), parasites of tenrecs (<i>Afrotheria: tenrecidae</i>) on Madagascar. Systematic Parasitology, 97: 623-637.</p>', '<p>Description de trois nouvelles espèces d''<i>Ixodes latreille</i>, 1795 (<i>acari : ixodidae</i>), parasites des tenrecs (<i>Afrotheria : tenrecidae</i>) à Madagascar. Systematic Parasitology, 97 : 623-637.</p>', 'endemic tick known from malagasy shrew tenrecs and named after Voahangy Soarimalala', 'tique endémique connue des tenrecs musaraignes malgaches et nommée d''après Voahangy Soarimalala', 'Ixodes soarimalalae', 'Ixodes soarimalalae');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (78, 'Ixodes uncus', '<p>Description of three new species of<i> Ixodes latreille</i>, 1795 (<i>Acari: ixodidae</i>), parasites of tenrecs (<i>Afrotheria: tenrecidae</i>) on Madagascar. Systematic Parasitology, 97: 623-637</p>', '2020-01-01', 'endemic tick known from malagasy shrew tenrecs', 3, 'project/scientific-research/ixodes-uncus-78', 7, '<p>Description of three new species of<i> Ixodes latreille</i>, 1795 (<i>Acari: ixodidae</i>), parasites of tenrecs (<i>Afrotheria: tenrecidae</i>) on Madagascar. Systematic Parasitology, 97: 623-637</p>', '<p>Description de trois nouvelles espèces d''<i>Ixodes latreille</i>, 1795 (<i>Acari : ixodidae</i>), parasites des tenrecs (<i>Afrotheria : tenrecidae</i>) à Madagascar. Parasitologie Systématique, 97 : 623-637</p>', 'endemic tick known from malagasy shrew tenrecs', 'tique endémique connue des tenrecs malgaches à musaraigne', 'Ixodes uncus', 'Ixodes uncus');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (77, 'Ixodes uilenbergi', '<p>Description de trois nouvelles espèces d<i>''Ixodes latreille</i>, 1795 (<i>Acari : ixodidae</i>), parasites des tenrecs (<i>Afrotheria : tenrecidae</i>) à madagascar. Systematic Parasitology, 97 : 623-637.</p>', '2020-01-01', 'tique endémique connue chez différentes espèces de tenrecs malgaches', 3, 'project/scientific-research/ixodes-uilenbergi-77', 7, '<p>Description of three new species of<i> Ixodes latreille</i>, 1795 (<i>Acari: ixodidae</i>), parasites of tenrecs (<i>Afrotheria: tenrecidae</i>) on Madagascar. Systematic Parasitology, 97: 623-637.</p>', '<p>Description de trois nouvelles espèces d<i>''Ixodes latreille</i>, 1795 (<i>Acari : ixodidae</i>), parasites des tenrecs (<i>Afrotheria : tenrecidae</i>) à madagascar. Systematic Parasitology, 97 : 623-637.</p>', 'endemic tick known from different species of malagasy tenrecs', 'tique endémique connue chez différentes espèces de tenrecs malgaches', 'Ixodes uilenbergi', 'Ixodes uilenbergi');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (35, 'Field Schools', NULL, '2010-01-01', NULL, 1, 'visit/field-school/field-schools-35', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (39, 'Field Schools', NULL, '2007-01-01', NULL, 1, 'visit/field-school/field-schools-39', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (1, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud : Cap Est', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-1', 1, 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud : Cap Est', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud : Cap Est', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (30, 'Field Schools', NULL, '2013-01-01', NULL, 1, 'visit/biological-inventories/field-schools-30', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (58, 'Biological inventories', 'Obtaining scientific information on the RS of Andranomena ant the Ampataka forest. In collaboration with Madagascar National Parks', '2010-03-01', NULL, 1, 'visit/biological-inventories/biological-inventories-58', 3, 'Obtaining scientific information on the RS of Andranomena ant the Ampataka forest. In collaboration with Madagascar National Parks', 'Collecte d''informations scientifiques sur la RS d''ANdranomena et la forêt d''Ampataka. En collaboration avec Parcs Nationaux Madagascar.', NULL, NULL, 'Biological inventories', 'Inventaires biologiques');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (59, 'Biological inventories', 'Biological exploration of the dry forest on karst of Beanka. In collaboration with the Universities of Geneva and Antananarivo.', '2011-11-01', NULL, 1, 'visit/biological-inventories/biological-inventories-59', 3, 'Biological exploration of the dry forest on karst of Beanka. In collaboration with the Universities of Geneva and Antananarivo.', 'Exploration biologique de la forêt sèche du plateau calcaire de Beanka. En collaboration avec les Universités de Genève et d''Antananarivo', NULL, NULL, 'Biological inventories', 'Inventaires biologiques');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (6, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-6', 1, 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (56, 'Biological inventories', 'Obtaining field data on the biological riches of identified protected areas for the extension of a humid forest of a UNESCO World Heritage site. In collaboration with UNESCO World Heritage program.', '2008-01-01', NULL, 1, 'visit/biological-inventories/biological-inventories-56', 3, 'Obtaining field data on the biological riches of identified protected areas for the extension of a humid forest of a UNESCO World Heritage site. In collaboration with UNESCO World Heritage program.', 'Mettre à jour la base de données sur la richesse biologique (Faune et Flore) des aires protégées identifiées pour l''extension du site du Patrimoine Mondial des forêt humides de l''Antsinanana. En collaboration avec Patrimoine Mondial.', NULL, NULL, 'Biological inventories', 'Inventaires biologiques');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (62, 'Transect altimétrique dans la zone protégée d''Andohahela', 'A la fin de l''''année 2022 l''''équipe de Vahatra refera un autre transect d''''altitude dans la zone protégée d''''Andohahela, de la même manière que Marojejy et dans le cadre du projet Rainforest. de la même manière que Marojejy et dans le cadre de la forêt tropicale de l''''Atsinanana. de l''''Atsinanana.', '2022-10-15', NULL, 1, 'visit/biological-inventories/elevational-transect-in-the-andohahela-protected-area-62', 3, 'In late 2022

the Vahatra team will redo another elevational transect in the Andohahela

protected area in the same fashion as Marojejy and part of the The Rainforest

of the Atsinanana.', 'A la fin de l''''année 2022 l''''équipe de Vahatra refera un autre transect d''''altitude dans la zone protégée d''''Andohahela, de la même manière que Marojejy et dans le cadre du projet Rainforest. de la même manière que Marojejy et dans le cadre de la forêt tropicale de l''''Atsinanana. de l''''Atsinanana.', NULL, NULL, 'Elevational transect in the Andohahela protected area', 'Transect altimétrique dans la zone protégée d''Andohahela');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (18, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-18', 1, 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (139, 'L''histoire, le statut actuel et l''avenir des aires protégées à Madagascar', '<p>L''histoire, le statut actuel et l''avenir des aires protégées à Madagascar. protégées à Madagascar.<br>Plénière invitée. 56e réunion annuelle de l''Association for Tropical Biology and Conservation, 30 juillet au 3 août 2019, Antananarivo, Madagascar</p>', '2019-07-08', NULL, 2, 'conference/vahatras-cooperation/the-history-current-status-and-future-of-the-protected-areas-in-madagascar-139', 5, '<p>The history, current status, and future of the protected areas in Madagascar.<br>Invited plenary. 56th annual meeting of the Association for Tropical Biology and Conservation, 30 July to 3 august 2019, Antananarivo, Madagascar</p>', '<p>L''histoire, le statut actuel et l''avenir des aires protégées à Madagascar. protégées à Madagascar.<br>Plénière invitée. 56e réunion annuelle de l''Association for Tropical Biology and Conservation, 30 juillet au 3 août 2019, Antananarivo, Madagascar</p>', NULL, NULL, 'The history, current status, and future of the protected areas in Madagascar', 'L''histoire, le statut actuel et l''avenir des aires protégées à Madagascar');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (19, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-19', 1, 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (28, 'Field Schools', NULL, '2014-01-01', NULL, 1, 'visit/biological-inventories/field-schools-28', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (57, 'Biological inventories', 'Obtaining field data for a biological compensation program associated with a mining project. In collaboration with Ambatovy Project.', '2009-01-01', NULL, 1, 'visit/biological-inventories/biological-inventories-57', 3, 'Obtaining field data for a biological compensation program associated with a mining project. In collaboration with Ambatovy Project.', 'Constitution d''une base de données pour le Programme de Compensation. En collaboration avec Sherritt International.', NULL, NULL, 'Biological inventories', 'Inventaires biologiques');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (135, 'Diversité et biogéographie du paludisme aviaire à Madagascar.', 'Diversité et biogéographie du paludisme aviaire à Madagascar. 27ème Congrès international

Ornithological Congress, Vancouver, Canada, août 2018.', '2018-08-01', NULL, 2, 'conference/vahatras-cooperation/diversity-and-biogeography-of-avian-malaria-in-madagascar-135', 5, 'Diversity and biogeography of avian malaria in Madagascar. 27th International

Ornithological Congress, Vancouver, Canada, August 2018.', 'Diversité et biogéographie du paludisme aviaire à Madagascar. 27ème Congrès international

Ornithological Congress, Vancouver, Canada, août 2018.', NULL, NULL, 'Diversity and biogeography of avian malaria in Madagascar.', 'Diversité et biogéographie du paludisme aviaire à Madagascar.');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (22, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-22', 1, 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (85, 'Biologie de la conservation', 'Vahatra s’intéresse également aux différents types de recherche impliquant : la taxinomie et la phylogénie des vertébrés , la biogéographie des vertébrés , l’écologie et la biologie, la conservation, et l’étude d’impact.', '2015-01-01', NULL, 3, 'project/grant/conservation-biology-85', 6, 'Vahatra is also interested in different types of research involving: vertebrates taxonomy and phylogeny, vertebrates biogeography, ecology and biology

, conservation and impact assessment', 'Vahatra s’intéresse également aux différents types de recherche impliquant : la taxinomie et la phylogénie des vertébrés , la biogéographie des vertébrés , l’écologie et la biologie, la conservation, et l’étude d’impact.', NULL, NULL, 'Conservation biology', 'Biologie de la conservation');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (132, 'Risques d''extinction des oiseaux vivant dans les forêts malgaches', 'Risques d''extinction des espèces d''oiseaux vivant dans les forêts malgaches en cas de déforestation anthropique.

27e Congrès ornithologique international, Vancouver, Canada, août 2018.', '2018-08-01', NULL, 2, 'conference/vahatras-cooperation/extinction-risks-of-malagasy-forest-dwelling-bird-132', 5, 'Extinction risks of Malagasy forest-dwelling bird species under anthropogenic deforestation.

27th International Ornithological Congress, Vancouver, Canada, August 2018.', 'Risques d''extinction des espèces d''oiseaux vivant dans les forêts malgaches en cas de déforestation anthropique.

27e Congrès ornithologique international, Vancouver, Canada, août 2018.', NULL, NULL, 'Extinction risks of Malagasy forest-dwelling bird', 'Risques d''extinction des oiseaux vivant dans les forêts malgaches');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (33, 'Field Schools', NULL, '2011-01-01', NULL, 1, 'visit/field-school/field-schools-33', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (43, 'Field Schools', NULL, '2001-01-01', NULL, 1, 'visit/field-school/field-schools-43', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (25, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-25', 1, 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (61, 'Biological inventories', 'Exploration of the biological diversity of Bemanevika Forest. In collaboration with the Peregrine Fund.', '2013-10-01', NULL, 1, 'visit/biological-inventories/biological-inventories-61', 3, 'Exploration of the biological diversity of Bemanevika Forest. In collaboration with the Peregrine Fund.', 'Exploration de la diversité biologique de la forêt de Bemanevika. En collaboration avec The Peregrine Fund', NULL, NULL, 'Biological inventories', 'Inventaires biologiques');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (142, 'Une fenêtre sur le passé récent', '<p>Une fenêtre sur le passé récent: les animaux disparus et les écosystèmes de Madagascar.<br> Conférence invitée. Alexander Von Humboldt, 16-19 octobre, bonn, allemagne.</p>', '2019-10-16', NULL, 2, 'conference/vahatras-cooperation/a-window-into-the-recent-past-142', 5, '<p>A window into the recent past: the extinct animals and ecosystems of Madagascar.<br> Invited lecture. Alexander Von Humboldt, 16-19 october, bonn, Germany.</p>', '<p>Une fenêtre sur le passé récent: les animaux disparus et les écosystèmes de Madagascar.<br> Conférence invitée. Alexander Von Humboldt, 16-19 octobre, bonn, allemagne.</p>', NULL, NULL, 'A window into the recent past', 'Une fenêtre sur le passé récent');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (9, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-9', 1, 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (34, 'Field Schools', NULL, '2010-01-01', NULL, 1, 'visit/field-school/field-schools-34', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (14, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-14', 1, 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (15, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-15', 1, 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (93, 'Élaboration de stratégies efficaces de lutte contre les rongeurs afin de réduire le risque de maladie dans des paysages ruraux écologiquement et culturellement diversifiés', '<p>Le projet, appelé REDROZ (Reduce Rodent Zoonosis), vise à réduire le risque d''infections transmises par les rongeurs en Afrique, y compris à Madagascar, en augmentant les connaissances et l''expertise nécessaires pour développer une gestion holistique des rongeurs applicable aux conditions locales et au niveau communautaire. La recherche est conçue pour répondre à la question de savoir si la gestion des rongeurs peut réduire les risques de transmission de maladies et améliorer la santé et le bien-être de l''homme. Les activités multidisciplinaires menées en Tanzanie et à Madagascar, se concentrent sur trois infections transmises par les rongeurs (<i>leptospirose</i>, <i>peste </i>et <i>rickettsiose</i>) et se déroulent en deux étapes.</p><p>Tout d''abord, nous comblons les lacunes en matière de connaissances et approfondissons nos collaborations existantes avec les communautés et les parties prenantes, ce qui nous permet de co-développer la lutte contre les rongeurs qui sont évalués de manière holistique dans la deuxième étape. Nous développons un outil de modélisation réaliste dans l''espace pour explorer les réponses probables des populations de rongeurs et des infections transmises par les rongeurs à des situations localisées. <br>Des analyses de riches ensembles de données archivées et de nouveaux essais expérimentaux sont utilisés pour paramétrer les modèles et tester les résultats. À Madagascar, l''étude est menée en collaboration avec l''Institut Pasteur de Madagascar. Dans une première phase, nous travaillons dans 12 villages dans la commune d''Analavory/Miarinarivo (Hautes Terres centrales à l''ouest d''Antananarivo), où les villages servent de réplicats, déterminant expérimentalement. Comment les mouvements des rongeurs et la prévalence des infections transmises par les rongeurs sont influencés par le contrôle. Nous utilisons une gamme de sciences sociales qualitatives et quantitatives pour parvenir à une compréhension plus approfondie des pratiques communautaires, comportement et de la compréhension des communautés sur les questions de santé, d''hygiène et de gestion des nuisibles, et travaillons avec les parties prenantes des sphères de la santé, de l''agriculture et de l''environnement pour comprendre leurs perceptions, leurs politiques et leurs services de soutien.</p><p>Dans la deuxième étape, nous menons un essai comparatif dans 12 paires de villages d''intervention et de non-intervention (n=24) stratégies de gestion des rongeurs pendant un an, et en surveillant les changements dans les pratiques et les attitudes humaines, les dommages causés par les rongeurs (<i>leptospirose</i>, <i>peste </i>et <i>rickettsiose</i>), les indicateurs de santé humaine et les apports temporels et financiers. <br>Les ateliers collaboratifs sont conçus pour pour faciliter les comparaisons entre pays et la formation de haut niveau des chercheurs en début de carrière. </p><p>Un doctorant de l''Université d''Antananarivo, Todisoa Radovimiandrinifarany, est intégré à ce projet dans le cadre de sa thèse de doctorat, et deux étudiants de l''Université de Fianarantsoa ont pris part au travail de terrain dans le cadre du capacity building.</p>', '2021-01-01', NULL, 3, 'project/grant/developing-effective-rodent-control-strategies-to-reduce-disease-risk-in-ecologically-and-culturally-diverse-rural-landscapes-93', 6, '<p>The project, named REDROZ (Reduce Rodent Zoonosis), aims at reducing the risk from rodent-borne infections in Africa, including Madagascar, by increasing knowledge and expertise needed to develop holistic rodent management applicable for local conditions and at the community level.<br>Research is designed to answer whether sustainable community-based rodent management can reduce risks of disease transmission and improve overall human health and wellbeing. Multidisciplinary activities conducted in Tanzania and Madagascar, focus on three rodent-borne infections (<i>leptospirosis</i>, <i>plague</i>, and <i>rickettsiosis</i>) and proceed in two stages.</p><p>First, we fill knowledge gaps, and deepening our existing collaborations with communities and stakeholders, allowing us to co-develop rodent control that are holistically evaluated in the second stage. We are developing a spatially realistic modelling tool to explore likely responses of rodent populations and rodent-borne infections to localized rodent control. Analyses of rich archived datasets and new experimental trials are being used to parameterize models and test output. In Madagascar, the study is carried-out in collaboration with Institut Pasteur de Madagascar. <br>In the first stage, we work in 12 villages within Analavory/Miarinarivo commune (Central Highlands to the west of Antananarivo), where villages act as replicates, experimentally determining how rodent movements and the prevalence of rodent-borne infections are impacted by control. We use a range of qualitative and quantitative social science to produce a deeper understanding of community practices, behavior, and understanding around relevant issues of health, hygiene and pest management, and work with stakeholders from health, agriculture, and environment spheres to understand their perceptions, policies, and support services.</p><p>In the second stage, we conduct a comparative trial in 12 intervention - non-intervention village pairs (n=24), co-developing and trialing rodent management strategies over one year, and monitoring changes to human practices and attitudes, rodent damage, disease within the rodent population (i.e. <i>leptospirosis</i>, <i>plague</i>, and <i>rickettsiosis</i>), human health indicators and time/financial inputs. <br>Collaborative workshops are designed to facilitate cross-country comparisons and high-level training to early career researchers. </p><p>A PhD student from The University of Antananarivo, Todisoa Radovimiandrinifarany, is integrated in this project in the context of his PhD thesis, and two students from The University of Fianarantsoa was taking part in the fieldwork in the context of capacity building.</p>', '<p>Le projet, appelé REDROZ (Reduce Rodent Zoonosis), vise à réduire le risque d''infections transmises par les rongeurs en Afrique, y compris à Madagascar, en augmentant les connaissances et l''expertise nécessaires pour développer une gestion holistique des rongeurs applicable aux conditions locales et au niveau communautaire. La recherche est conçue pour répondre à la question de savoir si la gestion des rongeurs peut réduire les risques de transmission de maladies et améliorer la santé et le bien-être de l''homme. Les activités multidisciplinaires menées en Tanzanie et à Madagascar, se concentrent sur trois infections transmises par les rongeurs (<i>leptospirose</i>, <i>peste </i>et <i>rickettsiose</i>) et se déroulent en deux étapes.</p><p>Tout d''abord, nous comblons les lacunes en matière de connaissances et approfondissons nos collaborations existantes avec les communautés et les parties prenantes, ce qui nous permet de co-développer la lutte contre les rongeurs qui sont évalués de manière holistique dans la deuxième étape. Nous développons un outil de modélisation réaliste dans l''espace pour explorer les réponses probables des populations de rongeurs et des infections transmises par les rongeurs à des situations localisées. <br>Des analyses de riches ensembles de données archivées et de nouveaux essais expérimentaux sont utilisés pour paramétrer les modèles et tester les résultats. À Madagascar, l''étude est menée en collaboration avec l''Institut Pasteur de Madagascar. Dans une première phase, nous travaillons dans 12 villages dans la commune d''Analavory/Miarinarivo (Hautes Terres centrales à l''ouest d''Antananarivo), où les villages servent de réplicats, déterminant expérimentalement. Comment les mouvements des rongeurs et la prévalence des infections transmises par les rongeurs sont influencés par le contrôle. Nous utilisons une gamme de sciences sociales qualitatives et quantitatives pour parvenir à une compréhension plus approfondie des pratiques communautaires, comportement et de la compréhension des communautés sur les questions de santé, d''hygiène et de gestion des nuisibles, et travaillons avec les parties prenantes des sphères de la santé, de l''agriculture et de l''environnement pour comprendre leurs perceptions, leurs politiques et leurs services de soutien.</p><p>Dans la deuxième étape, nous menons un essai comparatif dans 12 paires de villages d''intervention et de non-intervention (n=24) stratégies de gestion des rongeurs pendant un an, et en surveillant les changements dans les pratiques et les attitudes humaines, les dommages causés par les rongeurs (<i>leptospirose</i>, <i>peste </i>et <i>rickettsiose</i>), les indicateurs de santé humaine et les apports temporels et financiers. <br>Les ateliers collaboratifs sont conçus pour pour faciliter les comparaisons entre pays et la formation de haut niveau des chercheurs en début de carrière. </p><p>Un doctorant de l''Université d''Antananarivo, Todisoa Radovimiandrinifarany, est intégré à ce projet dans le cadre de sa thèse de doctorat, et deux étudiants de l''Université de Fianarantsoa ont pris part au travail de terrain dans le cadre du capacity building.</p>', NULL, NULL, 'Developing effective rodent control strategies to reduce disease risk in ecologically and culturally diverse rural landscapes', 'Élaboration de stratégies efficaces de lutte contre les rongeurs afin de réduire le risque de maladie dans des paysages ruraux écologiquement et culturellement diversifiés');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (16, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-16', 1, 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (148, '13e African Small Mammals Symposium (ASMS), Mekelle, Ethiopia', '<p>Le 13ème ASMS s''est tenue à l''université de Mekelle, dans le nord de l''Éthiopie, du 16 au 21 septembre 2019. <br>La réunion précédente avait eu lieu à Madagascar en septembre 2015 et organisée par l''Association Vahatra, plus précisément Voahangy Soarimalala et Steve Goodman.</p><p>Ces deux personnes étaient membres du comité scientifique international de la réunion de Mekelle, à laquelle ils ont participé avec trois étudiants en doctorat de l''Association Vahatra. Toutes ces personnes ont fait des présentations orales ou des posters lors de la réunion. </p><p>La participation de ces différentes personnes a été financée par un don de Bob et Gail Loveman. <br>L''une des étudiantes de Vahatra, Judith Vololona, a reçu le prix du meilleur poster étudiant lors de l''ASMS 2019.</p>', '2019-09-21', NULL, 2, 'conference/vahatras-cooperation/13th-african-small-mammals-symposium-asms-mekelle-ethiopia-148', 5, '<p>The 13th ASMS was held at Mekelle University in northern Ethiopia from 16 to 21 September 2019.<br>The previous meeting was held in Madagascar in September 2015 and organized by Association Vahatra, specifically Voahangy Soarimalala and Steve Goodman.</p><p>These two individuals were members of the International Scientific Committee for the Mekelle meeting, which they attended along with three Ph.D. students from Association Vahatra – all of these individuals gave oral or poster presentations at the meeting. </p><p>The attendance of these different people was financed by a gift from Bob and Gail Loveman. <br>One of the Vahatra students, Judith Vololona, was awarded as best student poster during the ASMS 2019.</p>', '<p>Le 13ème ASMS s''est tenue à l''université de Mekelle, dans le nord de l''Éthiopie, du 16 au 21 septembre 2019. <br>La réunion précédente avait eu lieu à Madagascar en septembre 2015 et organisée par l''Association Vahatra, plus précisément Voahangy Soarimalala et Steve Goodman.</p><p>Ces deux personnes étaient membres du comité scientifique international de la réunion de Mekelle, à laquelle ils ont participé avec trois étudiants en doctorat de l''Association Vahatra. Toutes ces personnes ont fait des présentations orales ou des posters lors de la réunion. </p><p>La participation de ces différentes personnes a été financée par un don de Bob et Gail Loveman. <br>L''une des étudiantes de Vahatra, Judith Vololona, a reçu le prix du meilleur poster étudiant lors de l''ASMS 2019.</p>', NULL, NULL, '13th African Small Mammals Symposium (ASMS), Mekelle, Ethiopia', '13e African Small Mammals Symposium (ASMS), Mekelle, Ethiopia');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (2, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-2', 1, 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (7, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-7', 1, 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (8, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-8', 1, 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (10, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-10', 1, 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (17, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-17', 1, 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (47, 'Field Schools', NULL, '1998-01-01', NULL, 1, 'visit/biological-inventories/field-schools-47', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (3, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-3', 1, 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (70, 'Génétique et applications', 'Génétique des Populations, Conservation génétique et leurs applications.', '2012-01-01', NULL, 2, 'conference/vahatras-cooperation/genetics-and-applications-70', 5, 'Population genetics, conservation genetics, and their applications. (Presented in French.) ', 'Génétique des Populations, Conservation génétique et leurs applications.', NULL, NULL, 'Genetics  and applications', 'Génétique et applications');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (60, 'Biological inventories', 'Biological exploration for the conception of a management and conservation plan. In collaboration with PGME-GIZ', '2011-01-01', NULL, 1, 'visit/biological-inventories/biological-inventories-60', 3, 'Biological exploration for the conception of a management and conservation plan. In collaboration with PGME-GIZ', 'Exploration biologique en vue de la conception d''un plan de gestion et de conservation. En collaboration avec PME-GIZ', NULL, NULL, 'Biological inventories', 'Inventaires biologiques');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (138, 'Variation des communautés d''oiseaux de sous-bois dans les forêts sèches malgaches', 'Variation des communautés d''oiseaux de sous-bois dans les forêts sèches malgaches :

effets des perturbations anthropogéniques. 56e réunion annuelle de l''association

for tropical Biology and Conservation, août-septembre 2019, antananarivo,

madagascar', '2019-08-30', NULL, 2, 'conference/biological-inventories/variation-of-understory-bird-communities-in-the-malagasy-dry-forests-138', 3, 'Variation of understory bird communities in the malagasy dry forests:

effects of anthropogenic disturbances. 56th annual meeting of the association

for tropical Biology and Conservation, august-september 2019, antananarivo,

madagascar', 'Variation des communautés d''oiseaux de sous-bois dans les forêts sèches malgaches :

effets des perturbations anthropogéniques. 56e réunion annuelle de l''association

for tropical Biology and Conservation, août-septembre 2019, antananarivo,

madagascar', NULL, NULL, 'Variation of understory bird communities in the malagasy dry forests', 'Variation des communautés d''oiseaux de sous-bois dans les forêts sèches malgaches');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (12, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-12', 1, 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (5, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-5', 1, 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (13, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-13', 1, 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (32, 'Field Schools', NULL, '2012-01-01', NULL, 1, 'visit/biological-inventories/field-schools-32', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (37, 'Field Schools', NULL, '2008-01-01', NULL, 1, 'visit/biological-inventories/field-schools-37', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (46, 'Field Schools', NULL, '2000-01-01', NULL, 1, 'visit/biological-inventories/field-schools-46', 2, NULL, NULL, NULL, NULL, 'Field Schools', 'Ecole de terrain');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (136, 'Rodent pets in rural Afro-malagasy farming communities', '<p>A comparative study of the characterization, impacts and locally-adapted management strategies of rodent pets in rural Afro-malagasy farming communities. <br>13th African Small Mammal Symposium. september 2019. Mekelle, Ethiopia.</p>', '2019-07-01', NULL, 2, 'conference/vahatras-cooperation/rodent-pets-in-rural-afro-malagasy-farming-communities-136', 5, '<p>A comparative study of the characterization, impacts and locally-adapted management strategies of rodent pets in rural Afro-malagasy farming communities. <br>13th African Small Mammal Symposium. september 2019. Mekelle, Ethiopia.</p>', 'Une étude comparative de la caractérisation, des impacts et des stratégies de gestion adaptées localement des rongeurs domestiques dans les zones rurales afro-malgaches.

stratégies de gestion adaptées localement des rongeurs domestiques dans les communautés agricoles afro-malgaches. 13e symposium africain sur les petits mammifères. 

septembre 2019. mekelle, éthiopie.', NULL, NULL, 'Rodent pets in rural Afro-malagasy farming communities', 'Les rongeurs domestiques dans les communautés agricoles rurales afro-malgaches');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (137, 'Variation of weight of some malagasy understory bird species', '<p>Latitudinal and longitudinal variation of weight of some malagasy understory bird species. <br>III International Conference: Island Biology 2019. July 2019. st denis, la Réunion.</p>', '2019-08-30', NULL, 2, 'conference/vahatras-cooperation/variation-of-weight-of-some-malagasy-understory-bird-species-137', 5, '<p>Latitudinal and longitudinal variation of weight of some malagasy understory bird species. <br>III International Conference: Island Biology 2019. July 2019. st denis, la Réunion.</p>', '<p>Variation latitudinale et longitudinale du poids de quelques espèces d''oiseaux de sous-bois malgaches. malgaches.<br>IIIe Conférence internationale : Island Biology 2019. Juillet 2019. st Denis, la Réunion.</p>', NULL, NULL, 'Variation of weight of some malagasy understory bird species', 'Variation du poids de quelques espèces d''oiseaux de sous-bois malgaches.');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (92, 'Save the rainforest sweden (Rädda Regnskog) project at Ambohitantely', '<p>The Réserve Spéciale d’Ambohitantely is one of the last remnant Central Highland montane forests on the island and it is of high priority to conserve, even though already notably fragmented. This fragile and vulnerable relict forest is home to rich and unique biodiversity from the invertebrate to the vertebrate fauna as well as for the flora. </p><p>Since 2007, the Association Vahatra has organized in this protected area a series of regular research missions, field schools or forms of ecological and biological training for students, as well as for conservation agents and managers. Over the past decades, between the anthropogenic pressures of wild grassland fires, some being set as acts of anarchy, which enter into the remaining natural forest, the number of forest parcels and their surface areas have been dramatically reduced or disappeared forever. In a collaborative project between Association Vahatra and Madagascar National Parks, the organization responsible for the management of the protected area, and with funding from Save the Rainforest Sweden, and in collaboration with Johannes Bergsten, Swedish Museum of Natural History in Stockholm, we have taken steps to try to conserve Ambohitantely and in association with local villagers.</p><p>The first critical step to conserve the forest was the completion of a firebreak around the largest remnant parcel, a massive activity and done 100% by hand. Between April and June 2021, just before the bush fire season, about 19 km of firebreaks were completed and these were installed in a manner to stop open country fire progression into the forest. Since 2015, scientific members of Association Vahatra with different colleagues were solicited to conceive and design a simple and practical guide for ecological restoration of three protected areas (Marojejy, Masoala, and Ranomafana).</p><p>To restore the ecological integrity of Ambohitantely, a significant portion of which has been destroyed or heavily degraded by bush fires, and several blocks will soon not be viable without intervention, the same methods and technics have been applied as for the sites mentioned above. An expert Malagasy Botanist in collaboration with Achille is in charge of the implementation of this challenging project. For now, we adopt active and assisted passive restoration strategy. A plant nursery has been established and the restoration site, that will link in a corridor fashion the main forest and a nearby forest fragment, is already prepared with a matrix of dug planting holes filled with compost and ready for transplantation in early 2022.</p><p>Previous studies carried out at Ambohitantely mainly concern vertebrates and plants, but the site includes different aquatic habitats for insects. To advance studies on the diversity and ecology of aquatic insects, Vahatra has engaged a post-doc student from the Entomology Department at The University of Antananarivo to carry out biological inventories of aquatic insects within and around the protected area. He is also in charge of the training and mentoring of Master students working on insects at his home institution.</p><p>Two of these students finalized the preparation of their memoirs in late 2021. In Ambohitantely, there is no functional infrastructure other than rugged camping sites for researchers, students or for other visitors.<br>To promote research activities and to increase the frequency of visitors, in the context of this project, we are in the process of constructing a humble biological station of 14 x 5 m with three rooms (kitchen, lab, and large room/dormitory for 8 persons).<br>Construction is now well underway and 40 000 fires clay bricks, cement, iron, etc. have been delivered to the site. The building is at the edge of the Madagascar National Parks village complex and a short distance from the main forest.</p>', '2021-01-01', NULL, 3, 'project/grant/save-the-rainforest-sweden-radda-regnskog-project-at-ambohitantely-92', 6, '<p>The Réserve Spéciale d’Ambohitantely is one of the last remnant Central Highland montane forests on the island and it is of high priority to conserve, even though already notably fragmented. This fragile and vulnerable relict forest is home to rich and unique biodiversity from the invertebrate to the vertebrate fauna as well as for the flora. </p><p>Since 2007, the Association Vahatra has organized in this protected area a series of regular research missions, field schools or forms of ecological and biological training for students, as well as for conservation agents and managers. Over the past decades, between the anthropogenic pressures of wild grassland fires, some being set as acts of anarchy, which enter into the remaining natural forest, the number of forest parcels and their surface areas have been dramatically reduced or disappeared forever. In a collaborative project between Association Vahatra and Madagascar National Parks, the organization responsible for the management of the protected area, and with funding from Save the Rainforest Sweden, and in collaboration with Johannes Bergsten, Swedish Museum of Natural History in Stockholm, we have taken steps to try to conserve Ambohitantely and in association with local villagers.</p><p>The first critical step to conserve the forest was the completion of a firebreak around the largest remnant parcel, a massive activity and done 100% by hand. Between April and June 2021, just before the bush fire season, about 19 km of firebreaks were completed and these were installed in a manner to stop open country fire progression into the forest. Since 2015, scientific members of Association Vahatra with different colleagues were solicited to conceive and design a simple and practical guide for ecological restoration of three protected areas (Marojejy, Masoala, and Ranomafana).</p><p>To restore the ecological integrity of Ambohitantely, a significant portion of which has been destroyed or heavily degraded by bush fires, and several blocks will soon not be viable without intervention, the same methods and technics have been applied as for the sites mentioned above. An expert Malagasy Botanist in collaboration with Achille is in charge of the implementation of this challenging project. For now, we adopt active and assisted passive restoration strategy. A plant nursery has been established and the restoration site, that will link in a corridor fashion the main forest and a nearby forest fragment, is already prepared with a matrix of dug planting holes filled with compost and ready for transplantation in early 2022.</p><p>Previous studies carried out at Ambohitantely mainly concern vertebrates and plants, but the site includes different aquatic habitats for insects. To advance studies on the diversity and ecology of aquatic insects, Vahatra has engaged a post-doc student from the Entomology Department at The University of Antananarivo to carry out biological inventories of aquatic insects within and around the protected area. He is also in charge of the training and mentoring of Master students working on insects at his home institution.</p><p>Two of these students finalized the preparation of their memoirs in late 2021. In Ambohitantely, there is no functional infrastructure other than rugged camping sites for researchers, students or for other visitors.<br>To promote research activities and to increase the frequency of visitors, in the context of this project, we are in the process of constructing a humble biological station of 14 x 5 m with three rooms (kitchen, lab, and large room/dormitory for 8 persons).<br>Construction is now well underway and 40 000 fires clay bricks, cement, iron, etc. have been delivered to the site. The building is at the edge of the Madagascar National Parks village complex and a short distance from the main forest.</p>', '<p>La Réserve Spéciale d''Ambohitantely est l''un des derniers vestiges des forêts montagnardes de l''île et sa conservation est hautement prioritaire, même si elle est déjà très fragmentée. Cette forêt relictuelle, fragile et vulnérable abrite une biodiversité riche et unique, de la faune invertébrée à la faune vertébrée ainsi que pour la flore. </p><p>Depuis 2007, l''Association Vahatra organise dans cette zone protégée une série de missions de recherche régulières, des écoles de terrain ou des formations écologiques et biologiques pour les étudiants, ainsi que pour les agents et gestionnaires de la conservation. Au cours des dernières décennies, entre les pressions anthropiques des incendies de feux de prairie, dont certains sont allumés de manière anarchique, qui pénètrent dans les forêt naturelle restante, le nombre de parcelles forestières et leur superficie ont été dramatiquement réduits ou ont disparu à jamais. Dans le cadre d''un projet de collaboration entre l''Association Vahatra et Madagascar National Parks, l''organisation l''organisation responsable de la gestion de la zone protégée, et avec le financement de Save the Rainforest Suède, et en collaboration avec Johannes Bergsten, du Musée suédois d''histoire naturelle à Stockholm, nous avons pris des mesures pour essayer de conserver Ambohitantely et en association avec les villageois locaux.</p><p>La première étape critique pour la conservation de la forêt a été la a été l''achèvement d''un coupe-feu autour de la plus grande parcelle restante: activité massive et réalisée à 100% à la main. Entre avril et juin 2021, juste avant la la saison des feux de brousse, environ 19 km de pare-feux ont été installés de manière à stopper la progression des feux de brousse dans la forêt.<br>Depuis 2015, les membres scientifiques de l''association Vahatra avec différents collègues ont été sollicités pour concevoir et réaliser un guide pour la restauration écologique de trois aires protégées (Marojejy, Masoala, et Ranomafana). </p><p>Restaurer l''intégrité écologique d''Ambohitantely, dont une partie importante a été détruite ou fortement dégradée par des feux de brousse, et plusieurs blocs ne seront bientôt plus viables sans intervention, les mêmes méthodes et techniques ont été appliquées que pour les sites mentionnés ci-dessus. Un expert botaniste malgache, en collaboration avec Achille, est chargé de la mise en œuvre de ce projet ambitieux.<br>Pour l''instant, nous adoptons une stratégie de restauration active et passive assistée. Une pépinière de plantes a été mise en place et le site de restauration, qui reliera dans un couloir de mode la forêt principale et un fragment de forêt voisin, est déjà préparé avec une matrice de trous de plantation creusés et remplis d''eau, de trous de plantation remplis de compost et prêts à être transplantés au début de 2022 Les études précédentes réalisées à Ambohitantely concernent principalement les vertébrés et les plantes, mais le site comprend différents habitats aquatiques pour les insectes. Afin de faire progresser les études sur la diversité et l''écologie des insectes aquatiques, Vahatra a engagé un étudiant post-doctoral de l''Université d''Oxford, un étudiant post-doc du département d''entomologie de l''Université d''Antananarivo pour effectuer des inventaires biologiques des aquatiques dans et autour de l''aire protégée. Il est également en charge de la de la formation et de l''encadrement des étudiants de Master travaillant sur les insectes dans son institution.</p><p>Deux de ces étudiants ont finalisé la préparation de leurs mémoires en 2021. A Ambohitantely, il n''y a pas d''infrastructure fonctionnelle autre que des sites de camping pour les chercheurs, les étudiants ou d''autres visiteurs.</p><p>Pour promouvoir activités de recherche et d''augmenter la fréquence des visiteurs, dans le cadre de ce projet, nous avons construit une humble station biologique de 14 x 5 m avec trois pièces (cuisine, laboratoire, et grande chambre/dortoir pour 8 personnes). La construction est maintenant bien avancée et 40 000 briques d''argile réfractaire, ciment, fer, etc. ont été livrés sur le site. Le bâtiment se trouve à la limite du complexe villageois de Madagascar National Parks et à une courte distance de la forêt principale.</p>', NULL, NULL, 'Save the rainforest sweden (Rädda Regnskog) project at Ambohitantely', 'Projet "Save the rainforest sweden" (Rädda Regnskog) à Ambohitantely');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (145, 'Helmsley Charitable trust – capacity building, phase II', '<p>This project, entitled “Development of scientific capacity for Malagasy conservation biologists”, commenced in January 2017. The project has four different aspects: </p><ul><li>field schools each year focusing on young Malagasy graduate student to help in their scientific orientation and skill development; the participant groups will also include some individuals working in protected areas management (e.g. Madagascar National Parks) and field practitioners for conservation organizations (most selected from other HCT financed projects)</li><li> field studies and different forms of mentoring for five Ph.D. students and two Master’s II students enrolled at The University of Antananarivo</li><li> continued advancement of scientific and general publications associated with Vahatra scientists and students, as well as the Malagasy scientific community</li><li>the publication of a large-scale synthesis on the protected areas of Madagascar (see above, “Presentation of protected areas book”). </li></ul><p>In 2019, two different field schools were carried out. The first was held between 20 and 26 April, in the Réserve Spéciale d’Ambohitantely, Analamanga Region and was attended by 18 students from the University of Antananarivo, as well as one from the Lycée Français of Ambatobe, Antananarivo. The second took place in the Réserve Spéciale d’Ankarana with six students from The University of Antsiranana and one from The University of Antananarivo, and two conservation agents of Madagascar National Parks working in the same protected area During the course of these multidisciplinary field schools, these students interact directly with professional biologists working in different disciplines of zoology. During the second field trip, they have also the opportunity to profit the presence of a specialist on botany and another scientist specialist on lichens.</p><p>This kind of training provides an excellent means for each student to decide what group of animal or type of study they are the most interested with respect to their future research project and study. These outings are often eye-opening experiences for the young Malagasy participants. <br>At the same time, they provide an excellent means for Vahatra to pick the students they would like to work with in advancing their Master or Ph.D. studies Concerning the status of student projects, three of the seven students (one Ph.D. degree and two master’s degrees) affiliated with this grant have defended the results of their studies in 2019. The remaining ones are at a very advanced stage and will presented their researches at the first portion of 2020.</p>', '2020-01-01', NULL, 3, 'project/grant/helmsley-charitable-trust-capacity-building-phase-ii-145', 6, '<p>This project, entitled “Development of scientific capacity for Malagasy conservation biologists”, commenced in January 2017. The project has four different aspects: </p><ul><li>field schools each year focusing on young Malagasy graduate student to help in their scientific orientation and skill development; the participant groups will also include some individuals working in protected areas management (e.g. Madagascar National Parks) and field practitioners for conservation organizations (most selected from other HCT financed projects)</li><li> field studies and different forms of mentoring for five Ph.D. students and two Master’s II students enrolled at The University of Antananarivo</li><li> continued advancement of scientific and general publications associated with Vahatra scientists and students, as well as the Malagasy scientific community</li><li>the publication of a large-scale synthesis on the protected areas of Madagascar (see above, “Presentation of protected areas book”). </li></ul><p>In 2019, two different field schools were carried out. The first was held between 20 and 26 April, in the Réserve Spéciale d’Ambohitantely, Analamanga Region and was attended by 18 students from the University of Antananarivo, as well as one from the Lycée Français of Ambatobe, Antananarivo. The second took place in the Réserve Spéciale d’Ankarana with six students from The University of Antsiranana and one from The University of Antananarivo, and two conservation agents of Madagascar National Parks working in the same protected area During the course of these multidisciplinary field schools, these students interact directly with professional biologists working in different disciplines of zoology. During the second field trip, they have also the opportunity to profit the presence of a specialist on botany and another scientist specialist on lichens.</p><p>This kind of training provides an excellent means for each student to decide what group of animal or type of study they are the most interested with respect to their future research project and study. These outings are often eye-opening experiences for the young Malagasy participants. <br>At the same time, they provide an excellent means for Vahatra to pick the students they would like to work with in advancing their Master or Ph.D. studies Concerning the status of student projects, three of the seven students (one Ph.D. degree and two master’s degrees) affiliated with this grant have defended the results of their studies in 2019. The remaining ones are at a very advanced stage and will presented their researches at the first portion of 2020.</p>', '<p>Ce projet, intitulé "Développement de la capacité scientifique des biologistes de biologistes de la conservation", a débuté en janvier 2017. Le projet comporte quatre différents aspects : </p><ul><li> des écoles de terrain chaque année se concentrant sur les jeunes Malgaches étudiants diplômés pour les aider dans leur orientation scientifique et le développement de leurs compétences ; les groupes de participants comprendront également des personnes travaillant dans la gestion des aires protégées (par exemple Madagascar National Parks) et des praticiens de terrain pour des organisations de conservation (la plupart sélectionnés dans d''autres projets financés par HCT)</li><li> études de terrain et différentes formes de mentorat pour cinq étudiants en doctorat et deux étudiants en Master II inscrits à l''Université d''Antananarivo. </li><li>l''avancement continu des publications scientifiques et générales associées aux scientifiques et aux étudiants de Vahatra, ainsi qu''à la communauté scientifique malgache</li><li>la publication d''une synthèse à grande échelle sur les aires protégées de Madagascar.</li></ul><p> En 2019, deux écoles de terrain différentes ont été réalisées. La première s''est tenue entre le 20 et le 26 avril, dans la Réserve Spéciale d''Ambohitantely, Région d''Analamanga, et a été suivie par 18 étudiants de l''Université de l''Université d''Antananarivo, ainsi qu''un étudiant du Lycée français Français d''Ambatobe, Antananarivo. La seconde a eu lieu dans la Réserve Spéciale d''Ankarana avec six étudiants de l''Université d''Antsiranana et de l''Université d''Antananarivo, et deux agents de conservation de Madagascar National Parks travaillant dans la même aire protégée.</p><p> Au cours de ces écoles de terrain multidisciplinaires, ces étudiants interagissent directement avec des biologistes professionnels travaillant dans différentes disciplines de la zoologie. Lors de la deuxième sortie sur le terrain, ils ont également l''occasion de profiter de la présence d''un spécialiste de la botanique et d''un autre scientifique spécialiste des lichens. Ce type de formation constitue un excellent moyen pour chaque étudiant de de décider quel groupe d''animaux ou quel type d''étude l''intéresse le plus pour son futur projet de recherche et d''étude. Ces sorties sont souvent des expériences révélatrices pour les jeunes participants malgaches. En même temps, elles constituent un excellent moyen pour Vahatra de choisir les étudiants avec lesquels elle souhaite travailler pour faire avancer le projet. avec lesquels ils souhaitent travailler pour faire avancer leurs études de master ou de doctorat.</p><p>En ce qui concerne l''état d''avancement des projets des étudiants, trois des sept étudiants (un doctorat et deux maîtrises) affiliés à cette subvention ont défendu les résultats de leurs études en 2019. Les autres sont à un stade très avancé et ont présentés leurs recherches lors de la la première partie de 2020.</p>', NULL, NULL, 'Helmsley Charitable trust – capacity building, phase II', 'Helmsley Charitable trust – renforcement des capacités, phase II');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (26, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-26', 1, 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (11, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-11', 1, 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (141, 'Changements environnementaux pléistocène-holocène à Madagascar', 'Changements environnementaux pléistocènes-holocènes sur

Madagascar et les extinctions associées. Conférence invitée. troisième conférence internationale.

Conférence, 8-13 juillet 2019, st. Clotide, La réunion, france.', '2019-07-08', NULL, 2, 'conference/vahatras-cooperation/pleistocene-holocene-environmental-changes-on-madagascar-141', 5, 'Pleistocene-holocene environmental changes on

Madagascar and associated extinctions. Invited lecture. third international

Conference, 8-13 July 2019, st. Clotide, La réunion, france', 'Changements environnementaux pléistocènes-holocènes sur

Madagascar et les extinctions associées. Conférence invitée. troisième conférence internationale.

Conférence, 8-13 juillet 2019, st. Clotide, La réunion, france.', NULL, NULL, 'Pleistocene-holocene environmental changes on Madagascar', 'Changements environnementaux pléistocène-holocène à Madagascar');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (4, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 1, 'visit/science-for-the-people/visit-villages-4', 1, 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', NULL, NULL, 'Visit villages', 'Visite des villages');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (134, 'Diversification de deux radiations aviaires endémiques', 'La diversification de deux radiations aviaires endémiques dans le

dans le hotspot de biodiversité de Madagascar. 27e congrès international d''ornithologie,

Vancouver, Canada, août 2018', '2018-08-01', NULL, 2, 'conference/vahatras-cooperation/diversification-of-two-endemic-avian-radiations-134', 5, 'Diversification of two endemic avian radiations in the

biodiversity hotspot of Madagascar. 27th International Ornithological Congress,

Vancouver, Canada, August 2018', 'La diversification de deux radiations aviaires endémiques dans le

dans le hotspot de biodiversité de Madagascar. 27e congrès international d''ornithologie,

Vancouver, Canada, août 2018', NULL, NULL, 'Diversification of two endemic avian radiations', 'Diversification de deux radiations aviaires endémiques');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (147, '56ème réunion annuelle de l''Association de Biologie Tropicale et de Conservation. (ATBC)', '<p>Madagascar a été choisi pour accueillir la réunion annuelle 2019 de l''Association. de biologie tropicale et de conservation, qui s''est tenue à Antananarivo du 30 juillet au 3 août 2019. </p><p>Au total, 723 délégués de 44 pays, dont 250 participants malgaches, ont assisté à la conférence de cinq jours qui s''est tenue au Ivato Conference Center. Il s''agissait d''un événement majeur pour Madagascar et l''une des intentions du comité local d''organiser la réunion à Madagascar était d''informer les politiciens nationaux et locaux et les entreprises de l''importance de la biodiversité renommée de l''île et de mettre en lumière le besoin critique pour le pays de prendre les mesures nécessaires pour conserver ce patrimoine naturel de façon immédiate et claire.</p><p> Cet aspect a été concrétisé par la pétition d'' Ivato, présentée en quatre langues (anglais, français, malgache et espagnol). (voir<a href=" https://www.atbc2019.org/"> https://www.atbc2019.org/</a>), signée par des centaines de personnes du monde entier, et qui devait être signée par le Président de Madagascar ou un ministre désigné lors de la cérémonie de clôture de la réunion. En 2020, cette dernière étape n''a pas encore eu lieu. </p><p>L''association Vahatra était l''une des organisations de soutien locales et dont les différents membres jouaient des rôles différents : <strong>Achille Raselimanana</strong> était membre du comité scientifique et président de cinq sessions et <strong>Steve Goodman</strong> était le co-président de la composante académique. Steve a également présenté une conférence plénière pendant la conférence. L''Association Vahatra a mis à disposition des bourses compétitives pour 30 participants malgaches, dont 17 étudiants diplômés et 13 étudiants professeurs/chercheurs pour prendre part à la réunion. <br>Un certain nombre de présentations orales et de posters ont été faites par les étudiants de Vahatra lors de la réunion. Vahatra a également tenu un stand de livres.</p>', '2019-07-30', NULL, 2, 'conference/vahatras-cooperation/56th-annual-meeting-of-the-association-of-tropical-biology-and-conservation-147', 5, '<p>Madagascar was chosen to host the 2019 annual meeting of the Association of Tropical Biology and Conservation, which was held in Antananarivo from 30 July to 3 August 2019. </p><p>Overall 723 delegates from 44 countries, including 250 Malagasy participants, attended the five day conference held at the Ivato Conference Center. This was a major event for Madagascar and one of the intents of the local committee to have the meeting in Madagascar was to informnational and local politicians and business groups of the importance of the island’s renown biodiversity and bring to light the critical need for the country to take the necessary steps to conserve this natural patrimony in an immediate and clear fashion.</p><p>This aspect was embodied in the petition of Ivato, presented in four languages (English, French, Malagasy, and Spanish (see <a href="https://www.atbc2019.org/">https://www.atbc2019.org/</a>), which was signed by hundreds of people from around the world and envisioned to be signed by the President of Madagascar or a designated Minister at the closing ceremony of the meeting. To date (January 2020), this latter step has yet to occur.</p><p> Association Vahatra was one of the local supporting organizations and with different members taking different roles: <strong>Achille Raselimanana</strong> was a member of the scientific committee, and chair for five sessions and <strong>Steve Goodman</strong> was the co-chair of the academic component. Steve also presented a plenary lecture during the conference. Association Vahatra made available competitive grants for 30 Malagasy participants, including 17 graduate students and 13 professors/researchers to take part in the meeting. <br>A number of oral and poster presentations were made by Vahatra students at the meeting. Vahatra also had a book stand.</p>', '<p>Madagascar a été choisi pour accueillir la réunion annuelle 2019 de l''Association. de biologie tropicale et de conservation, qui s''est tenue à Antananarivo du 30 juillet au 3 août 2019. </p><p>Au total, 723 délégués de 44 pays, dont 250 participants malgaches, ont assisté à la conférence de cinq jours qui s''est tenue au Ivato Conference Center. Il s''agissait d''un événement majeur pour Madagascar et l''une des intentions du comité local d''organiser la réunion à Madagascar était d''informer les politiciens nationaux et locaux et les entreprises de l''importance de la biodiversité renommée de l''île et de mettre en lumière le besoin critique pour le pays de prendre les mesures nécessaires pour conserver ce patrimoine naturel de façon immédiate et claire.</p><p> Cet aspect a été concrétisé par la pétition d'' Ivato, présentée en quatre langues (anglais, français, malgache et espagnol). (voir<a href=" https://www.atbc2019.org/"> https://www.atbc2019.org/</a>), signée par des centaines de personnes du monde entier, et qui devait être signée par le Président de Madagascar ou un ministre désigné lors de la cérémonie de clôture de la réunion. En 2020, cette dernière étape n''a pas encore eu lieu. </p><p>L''association Vahatra était l''une des organisations de soutien locales et dont les différents membres jouaient des rôles différents : <strong>Achille Raselimanana</strong> était membre du comité scientifique et président de cinq sessions et <strong>Steve Goodman</strong> était le co-président de la composante académique. Steve a également présenté une conférence plénière pendant la conférence. L''Association Vahatra a mis à disposition des bourses compétitives pour 30 participants malgaches, dont 17 étudiants diplômés et 13 étudiants professeurs/chercheurs pour prendre part à la réunion. <br>Un certain nombre de présentations orales et de posters ont été faites par les étudiants de Vahatra lors de la réunion. Vahatra a également tenu un stand de livres.</p>', NULL, NULL, '56th annual meeting of the Association of Tropical Biology and Conservation', '56ème réunion annuelle de l''Association de Biologie Tropicale et de Conservation. (ATBC)');
INSERT INTO activity (id, title, description, date, note, idtypeactivity, slug, idtypesubactivity, description_en, description_fr, note_en, note_fr, title_en, title_fr) VALUES (88, 'Éradication de la corneille domestique indienne et surveillance des espèces envahissantes', '<p>Dans le cadre de ce projet, Madagascar Fauna and Flora Group (MFG) en collaboration avec l''Association Vahatra et d''autres partenaires a reçu une subvention pour éradiquer la Corneille d''Inde (Corvus splendens), récemment introduite et très envahissant dans la région de Toamasina, sur la côte centrale et orientale de Madagascar, ainsi que dans d''autres zones où l''espèce est apparue sur l''île.</p><p>La subvention comprenait également l''avancement de différents types de recherche associés aux problèmes imposés aux écosystèmes de Madagascar et à la population malgache par les espèces animales invasives. La MFG était chargée d''orchestrer l''éradication de la corneille domestique indienne et les interventions de Vahatra se sont concentrées sur les aspects scientifiques associés à la biologie, la distribution et les zoonoses de la corneille et du moineau domestique (Passer domesticus) dans et autour de Toamasina.</p><p>Plus spécifiquement, la recherche scientifique sur les espèces invasives comprenaient des projets menés par trois étudiants en Master de l''Université d''Antananarivo et travaillant avec des scientifiques de Vahatra, qui ont tous été présentés en 2021. Ces études portaient notamment sur la présence et l''absence de corbeaux domestiques dans tous les principaux ports de l''île et l''estimation de la population (par Estelle Raobson Hanitrandrasana) ; la biologie de la reproduction et le régime alimentaire des moineaux domestiques dans la ville de Toamasina (par Saholy Raolihanitrasina) ; et le régime alimentaire d''une espèce de chauve-souris quasi-invasive vivant dans des structures construites par l''homme (par Lomeris Todilahy).</p><p>A la fin de l''année 2021, MFG et les collaborateurs du projet ont éliminé tous les corbeaux domestiques connus à Madagascar, ce qui est une accomplissement majeur.</p>', '2015-01-01', NULL, 3, 'project/grant/indian-house-crow-eradication-and-invasive-species-surveillance-88', 6, '<p>In the context of this project, Madagascar Fauna and Flora Group (MFG) in collaboration with Association Vahatra and other partners received a grant to eradicate the recently introduced and highly invasive Indian House Crow (Corvus splendens) in the Toamasina area, central eastern coast of Madagascar, as well as other areas the species has turned up on the island. </p><p>The grant also included advancing different types of research associated with problems imposed on Madagascar’s ecosystems and the Malagasy people by invasive animal species. MFG was responsible for orchestrating the eradication of the Indian House Crow and Vahatra’s interventions focused on scientific aspects associated with the biology, distribution, and zoonotic diseases of the crow and House Sparrows (Passer domesticus) in and around Toamasina.</p><p>More specifically, scientific research on invasive species included projects conducted by three Master’s students from The University of Antananarivo and working with Vahatra scientists, all of which were presented in 2021. These studies included the presence and absence of Indian House Crows in all major ports on the island and population estimates (by Estelle Raobson Hanitrandrasana); the breeding biology and dietary regime of House Sparrows in the city of Toamasina (by Saholy Raolihanitrasina); and the diet of a quasi-invasive bat species living in human-built structures (by Lomeris Todilahy).</p><p>As of late 2021, MFG and the project collaborators have removed all of the known House Crows on Madagascar, which is a major accomplishment.</p>', '<p>Dans le cadre de ce projet, Madagascar Fauna and Flora Group (MFG) en collaboration avec l''Association Vahatra et d''autres partenaires a reçu une subvention pour éradiquer la Corneille d''Inde (Corvus splendens), récemment introduite et très envahissant dans la région de Toamasina, sur la côte centrale et orientale de Madagascar, ainsi que dans d''autres zones où l''espèce est apparue sur l''île.</p><p>La subvention comprenait également l''avancement de différents types de recherche associés aux problèmes imposés aux écosystèmes de Madagascar et à la population malgache par les espèces animales invasives. La MFG était chargée d''orchestrer l''éradication de la corneille domestique indienne et les interventions de Vahatra se sont concentrées sur les aspects scientifiques associés à la biologie, la distribution et les zoonoses de la corneille et du moineau domestique (Passer domesticus) dans et autour de Toamasina.</p><p>Plus spécifiquement, la recherche scientifique sur les espèces invasives comprenaient des projets menés par trois étudiants en Master de l''Université d''Antananarivo et travaillant avec des scientifiques de Vahatra, qui ont tous été présentés en 2021. Ces études portaient notamment sur la présence et l''absence de corbeaux domestiques dans tous les principaux ports de l''île et l''estimation de la population (par Estelle Raobson Hanitrandrasana) ; la biologie de la reproduction et le régime alimentaire des moineaux domestiques dans la ville de Toamasina (par Saholy Raolihanitrasina) ; et le régime alimentaire d''une espèce de chauve-souris quasi-invasive vivant dans des structures construites par l''homme (par Lomeris Todilahy).</p><p>A la fin de l''année 2021, MFG et les collaborateurs du projet ont éliminé tous les corbeaux domestiques connus à Madagascar, ce qui est une accomplissement majeur.</p>', NULL, NULL, 'Indian house Crow eradication and invasive species surveillance', 'Éradication de la corneille domestique indienne et surveillance des espèces envahissantes');


--
-- Data for Name: activityimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO activityimage (id, idactivity, image) VALUES (177, 48, 'DSC_0359.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (178, 48, 'P1740439.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (179, 48, 'Remplissage_des_pots_Ambohitantely_1.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (340, 69, 'Conf_2012_Steve_Goodman.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (342, 68, 'Conf_2012_Olivier_Langrand.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (344, 150, 'infocusmj.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (346, 149, 'goodmanthanks.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (347, 149, 'IMG-2597.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (349, 72, 'Capture.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (351, 65, 'Conf_2010_Rebioma.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (353, 63, 'IMG-2597.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (197, 92, 'Field_School_Manager_Ambohitantely_3.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (201, 92, 'Reboisement_Ambohitantely_1.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (206, 90, 'DSC_0549.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (207, 90, 'DSC_0894.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (210, 89, 'DSC_0839.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (211, 89, 'DSC_0854.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (213, 88, '_80212512_img_0284.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (217, 29, 'Bem1.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (218, 29, 'Bem2.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (220, 92, 'IMG_20220820_173441_351.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (223, 42, 'NewPh_041.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (224, 42, 'Tsim_089.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (225, 42, 'Tsim_250.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (226, 42, 'Tsima_119.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (227, 42, 'Tsima_370.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (231, 37, 'DSC_0532.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (236, 44, 'DSC_3033.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (240, 46, 'Field_School_Ankarana_2.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (241, 46, 'Field_School_Ankarana_3.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (242, 46, 'P1750105.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (243, 46, 'Reserve_Naturelle_Ankarana_1.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (248, 49, 'Amena_042.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (249, 49, 'Amena_048.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (250, 49, 'Picture_608.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (251, 49, 'Picture_637.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (255, 46, 'Uroplatus_fetsy.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (257, 40, 'DSCN2414.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (358, 136, 'asms22.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (261, 92, 'DSC_1811.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (262, 92, 'P1730885.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (265, 90, 'Anodonthyla_boulengeri_AHL.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (266, 90, 'Palleon_nasus_RMF.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (270, 45, 'Martin_in_lab_(Daraina).webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (280, 44, 'P1000029.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (281, 44, 'P1000215.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (284, 38, 'M2-DBA_338.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (285, 50, 'Field_school_1(Tamp).webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (286, 50, 'Field_school_2_(Tamp).webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (360, 146, '20190710_072524.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (303, 144, 'jeanyves.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (306, 145, 'DSC_2203.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (310, 146, '20190712_152519.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (311, 146, 'IMG-2597.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (312, 146, 'IMG-2799.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (313, 146, 'IMG-2864.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (315, 147, 'DSC_2357_2019.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (316, 148, 'IMG_3510.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (317, 148, 'asms22.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (321, 148, 'symposium12121.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (322, 142, 'sgc1.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (323, 137, 'sgc2.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (324, 138, 'sgc3.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (325, 139, 'sgc4.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (326, 141, 'sgc5.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (328, 136, 'sgc7.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (329, 132, 'sgc8.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (330, 135, 'sgc9.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (331, 133, 'sgc10.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (332, 134, 'sgc11.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (335, 145, '20190525_112646.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (1, 52, 'mikea01.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (2, 53, 'nosyhara01.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (3, 54, 'anjozorobe01.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (4, 55, 'kirindymitea01.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (5, 56, 'midongy01.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (6, 57, 'ambatovy01.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (7, 58, 'andranomena01.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (8, 59, 'beanka01.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (9, 60, 'salaryeng.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (10, 61, 'bemanevika01.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (341, 69, 'g5.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (36, 90, 'DSC_0833.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (37, 92, 'IMG_20220815_153540_834.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (38, 92, 'IMG_20220818_143216_656.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (44, 89, 'DSC_0553.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (45, 89, 'DSC_2930.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (48, 93, 'Amena_035.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (50, 74, 'Grosphus-mavo.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (51, 77, 'Ixodes-uilenbergi.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (52, 75, 'Haemaphysalis-galidiae.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (53, 80, 'Platypelis_ranjomena_BTP.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (54, 81, 'Uroplatus_fangorn_MRJ_C5.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (55, 82, 'Uroplatus_fivehy_Mo_MRJ_C5.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (56, 85, 'IMG_9014.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (57, 85, 'DSC_7.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (58, 83, 'DSCN9463.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (61, 84, 'Picture_067.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (62, 84, 'Lab_054.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (63, 86, 'IMG_7685.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (70, 27, 'Tsi_003.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (71, 27, 'Tsi_369.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (72, 27, 'Tsi_405.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (343, 67, 'Lounes-Chikhi.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (345, 143, 'lova.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (348, 73, 'Capture2.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (76, 29, 'Agents_avec_empaillage.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (77, 29, 'Beman_079.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (350, 66, 'Capture5.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (352, 64, 'pala12302-fig-0003-m.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (354, 131, 'Capture7.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (359, 146, 'img-2669.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (87, 35, 'Amena_027.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (88, 35, 'Amena_037.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (89, 35, 'Amna_363.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (90, 35, 'Andranomena_kids-2010.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (97, 39, 'Field_School_Master_Ambohitantely_5.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (127, 70, 'Lounes-Chikhi.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (133, 62, 'DSC_0434.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (134, 62, 'P1730326.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (135, 6, 'betsiboka-river-26.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (137, 17, '16.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (138, 18, 'marotandrano.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (139, 19, '17.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (140, 20, '11.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (141, 21, '12.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (142, 22, '8.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (143, 23, '19.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (144, 24, '13.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (145, 2, '4.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (146, 3, '1.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (147, 4, '14.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (148, 12, '600px-Marotolana_Ambanja_033.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (149, 13, 'marovato.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (150, 14, 'img_8199.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (151, 15, '6.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (152, 16, '15.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (153, 5, 'petit-village-de-manantenina.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (154, 11, 'zizanie-a-betsiaka.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (156, 7, '18.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (157, 8, '7.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (160, 9, 'ambodivoara.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (161, 10, '3.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (162, 1, '9.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (163, 25, '2.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (164, 26, '10.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (165, 91, 'bat1.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (166, 91, 'bat2.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (167, 79, 'mantidactylus_ambony.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (168, 78, 'Ixodes-uncus.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (169, 87, 'ebook1.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (170, 87, 'ebook2.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (171, 87, 'ebook3.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (172, 88, 'indiancrowhouse.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (180, 76, 'Ixodes-soarimalalae.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (199, 92, 'DSC_0511.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (200, 92, 'Remplissage_des_pots_Ambohitantely_1.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (203, 90, '20190408_104059.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (204, 90, '20190409_135213.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (205, 90, 'DSC_0325.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (208, 89, 'DSC_0931.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (209, 89, 'DSC_3033.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (212, 88, 'House_Crow_RWD2.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (214, 62, 'DSC_0203.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (215, 62, 'DSC_0420.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (216, 62, 'DSC_0882.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (219, 27, 'Tsim2.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (221, 33, 'classe-laurence-small-1.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (222, 33, 'paysage-salary-small-4--1.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (228, 37, '20190520_130444.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (229, 37, '20190526_101613.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (230, 37, 'DSC_1816.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (232, 38, 'M2-DBA_001.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (233, 38, 'M2-DBA_226.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (234, 38, 'M2-DBA_254.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (235, 38, 'M2-DBA_366.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (237, 44, 'DSC_0733.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (238, 44, 'DSC_0931.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (239, 44, 'DSC_0984.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (244, 47, 'Ankazo_041.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (245, 47, 'Ankazo_063.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (246, 47, 'Ankazo_141.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (247, 47, 'APR&Friends.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (252, 51, 'Tsiaf_027.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (253, 51, 'Tsiaf_028.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (254, 51, 'Tsiaf_227.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (256, 34, 'Sahambaky_Camp.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (258, 41, 'fb3.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (260, 43, 'Bea_354.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (267, 31, 'Agents_avec_empaillage.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (268, 31, 'Bema_283.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (269, 31, 'DSCN6580.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (271, 34, 'Lak_141.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (272, 34, 'Lak_143.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (273, 34, 'Laka_052.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (274, 34, 'Laka_055.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (275, 34, 'Laka_058.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (276, 34, 'Laka_063.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (277, 34, 'Laka_156.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (278, 34, 'Laka_159.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (279, 34, 'Laka_160.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (282, 38, 'Last_day-FS_Maromizaha.webp');
INSERT INTO activityimage (id, idactivity, image) VALUES (283, 38, 'M2-DBA_048.webp');


--
-- Data for Name: institution; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO institution (id, name) VALUES (1, 'Association Vahatra');
INSERT INTO institution (id, name) VALUES (2, 'University of Antananarivo');
INSERT INTO institution (id, name) VALUES (3, 'University of Fianarantsoa');
INSERT INTO institution (id, name) VALUES (4, 'University of Mahajanga');
INSERT INTO institution (id, name) VALUES (5, 'WWF Madagascar');
INSERT INTO institution (id, name) VALUES (6, 'Strategy Seminar');
INSERT INTO institution (id, name) VALUES (7, 'Madagascar National Parks');
INSERT INTO institution (id, name) VALUES (8, 'Indian Ocean Commission');
INSERT INTO institution (id, name) VALUES (9, 'Ecole Supérieure des Sciences Agronomiques');
INSERT INTO institution (id, name) VALUES (10, 'Office National pour l''Environnement (ONE)');
INSERT INTO institution (id, name) VALUES (11, 'Institut National des Sciences et Techniques Nucléaires');
INSERT INTO institution (id, name) VALUES (12, 'University of Hamburg');
INSERT INTO institution (id, name) VALUES (13, 'Kingfisher Group');
INSERT INTO institution (id, name) VALUES (14, 'Critical Ecosystem Partnership Fund (CEPF)');
INSERT INTO institution (id, name) VALUES (15, 'Invenergy');
INSERT INTO institution (id, name) VALUES (16, 'University of Toliara');
INSERT INTO institution (id, name) VALUES (17, 'University of Kwa-Zulu Natal, South Africa');
INSERT INTO institution (id, name) VALUES (18, 'University of Venda, South Africa ');
INSERT INTO institution (id, name) VALUES (19, 'CRVOI La Réunion');
INSERT INTO institution (id, name) VALUES (20, 'Madagascar Fauna and Flora Group ');
INSERT INTO institution (id, name) VALUES (21, 'Duke University');
INSERT INTO institution (id, name) VALUES (22, 'National Institute of Health (NIH)');
INSERT INTO institution (id, name) VALUES (23, 'National Science Foundation (NSF)');
INSERT INTO institution (id, name) VALUES (24, 'Korea International Cooperation Agency (KOICA)');
INSERT INTO institution (id, name) VALUES (25, 'United Nations Educational, Scientific and Cultural Organization (UNESCO)');
INSERT INTO institution (id, name) VALUES (26, 'Fonds Européen de Développement Régional (FEDER)');
INSERT INTO institution (id, name) VALUES (27, 'University of La Reunion');
INSERT INTO institution (id, name) VALUES (28, 'Processus Infectieux en Milieu Insulaire Tropical (PIMIT)');
INSERT INTO institution (id, name) VALUES (29, 'Global Challenges Research Fund (GCRF)');
INSERT INTO institution (id, name) VALUES (30, 'United Kingdom Research and Innovation (UKRI)');
INSERT INTO institution (id, name) VALUES (31, 'System of Protected Areas of Madagascar (SAPM)');
INSERT INTO institution (id, name) VALUES (32, 'REBIOMA');
INSERT INTO institution (id, name) VALUES (33, 'Tany Meva and UNESCO World Heritage program');
INSERT INTO institution (id, name) VALUES (34, 'CITES');
INSERT INTO institution (id, name) VALUES (35, 'Ministry of the Environment');
INSERT INTO institution (id, name) VALUES (36, 'The Peregrine Fund');
INSERT INTO institution (id, name) VALUES (37, 'Ambatovy-Sherritt International');


--
-- Data for Name: activityinstitution; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (1, 29, 36);
INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (2, 31, 36);
INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (3, 87, 14);
INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (4, 88, 14);
INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (5, 88, 20);
INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (6, 89, 21);
INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (7, 89, 22);
INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (8, 89, 23);
INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (9, 90, 24);
INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (10, 90, 25);
INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (11, 90, 7);
INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (12, 91, 26);
INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (13, 91, 27);
INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (14, 91, 28);
INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (15, 93, 29);
INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (16, 93, 30);
INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (35, 146, 1);
INSERT INTO activityinstitution (id, idactivity, idinst) VALUES (36, 65, 32);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--


INSERT INTO person (id, name, username, title) VALUES (390, 'steve jobs', 'ss', NULL);
INSERT INTO person (id, name, username, title) VALUES (391, 'Rabenandrasana', 'C.', NULL);
INSERT INTO person (id, name, username, title) VALUES (395, 'test', 'Testing', NULL);
INSERT INTO person (id, name, username, title) VALUES (397, 'Wohlhauser', 'Sébastien', NULL);
INSERT INTO person (id, name, username, title) VALUES (1, 'Raselimanana', 'Achille P.', 'Pr.');
INSERT INTO person (id, name, username, title) VALUES (2, 'Raherilalao', 'Marie Jeanne', 'Dr.');
INSERT INTO person (id, name, username, title) VALUES (3, 'Soarimalala', 'Voahangy', 'Dr.');
INSERT INTO person (id, name, username, title) VALUES (4, 'Goodman', 'Steven M.', 'Pr.');
INSERT INTO person (id, name, username, title) VALUES (392, 'Lovanomenjanahary', 'Marline', NULL);
INSERT INTO person (id, name, username, title) VALUES (396, 'test', 'Tahina', NULL);
INSERT INTO person (id, name, username, title) VALUES (398, 'Dijkstra', 'Klaas-Douwe B.', NULL);
INSERT INTO person (id, name, username, title) VALUES (402, 'Jungers', 'William L.', NULL);
INSERT INTO person (id, name, username, title) VALUES (13, 'Ratrimoarivony ✞', 'Guy', 'General');
INSERT INTO person (id, name, username, title) VALUES (8, 'Malaimbolohitsy', 'Elisa', 'Mr.');
INSERT INTO person (id, name, username, title) VALUES (6, 'Ratsirahaingotiana', 'Sandra Cathy', 'Ms.');
INSERT INTO person (id, name, username, title) VALUES (393, 'scdsd', 'cdsc', NULL);
INSERT INTO person (id, name, username, title) VALUES (399, 'Cohen', 'Callan', NULL);
INSERT INTO person (id, name, username, title) VALUES (276, 'Raharison', 'J. L.', NULL);
INSERT INTO person (id, name, username, title) VALUES (5, 'Raharinirina', 'Sabrina', 'Ms.');
INSERT INTO person (id, name, username, title) VALUES (7, 'Razafindravao', 'Rachel (Ledada)', 'Mr.');
INSERT INTO person (id, name, username, title) VALUES (9, 'Avisoa', 'Mara', 'Mr.');
INSERT INTO person (id, name, username, title) VALUES (10, 'Tsitindria', 'François', 'Mr.');
INSERT INTO person (id, name, username, title) VALUES (11, 'Rakotondravony', 'Daniel', 'Pr.');
INSERT INTO person (id, name, username, title) VALUES (12, 'Ratsifandrihamanana', 'Nanie', 'Ms.');
INSERT INTO person (id, name, username, title) VALUES (14, 'Andrianarivo', 'Chantal', 'Ms.');
INSERT INTO person (id, name, username, title) VALUES (15, 'Ratsirarson', 'Joelisoa', 'Pr.');
INSERT INTO person (id, name, username, title) VALUES (16, 'Rakotoary', 'Jean Chrysostome', 'Mr.');
INSERT INTO person (id, name, username, title) VALUES (17, 'Andriambololona', 'Raoelina', 'Pr.');
INSERT INTO person (id, name, username, title) VALUES (18, 'Ganzhorn', 'Jörg U.', 'Pr.');
INSERT INTO person (id, name, username, title) VALUES (19, 'Goodman', 'Paul', 'Mr.');
INSERT INTO person (id, name, username, title) VALUES (20, 'Langrand', 'Olivier', 'Mr.');
INSERT INTO person (id, name, username, title) VALUES (21, 'Polsky', 'Michael', 'Mr.');
INSERT INTO person (id, name, username, title) VALUES (22, 'Ranivoharimanana', 'Lovasoa', 'Ms.');
INSERT INTO person (id, name, username, title) VALUES (23, 'REBIOMA', 'Equipe', '');
INSERT INTO person (id, name, username, title) VALUES (24, 'Ratsimbazafy', 'Jonah', 'Mr.');
INSERT INTO person (id, name, username, title) VALUES (277, 'Cumberlidge', 'N.', NULL);
INSERT INTO person (id, name, username, title) VALUES (278, 'Rasamy Razanabolana', 'J.', NULL);
INSERT INTO person (id, name, username, title) VALUES (279, 'Ranaivoson', 'C. H.', NULL);
INSERT INTO person (id, name, username, title) VALUES (280, 'Randrianasolo', 'H. H.', NULL);
INSERT INTO person (id, name, username, title) VALUES (281, 'Sayer', 'C.', NULL);
INSERT INTO person (id, name, username, title) VALUES (25, 'Chikhi', 'Lounès', 'Mr.');
INSERT INTO person (id, name, username, title) VALUES (26, 'Rakotondratsimba', 'Mbola', 'Ms.');
INSERT INTO person (id, name, username, title) VALUES (27, 'Douglas', 'Michael', 'Dr.');
INSERT INTO person (id, name, username, title) VALUES (28, 'Ralison', 'J.', NULL);
INSERT INTO person (id, name, username, title) VALUES (29, 'Wilmé', 'L.', NULL);
INSERT INTO person (id, name, username, title) VALUES (31, 'Gardner', 'Charlie J.', NULL);
INSERT INTO person (id, name, username, title) VALUES (32, 'Andrianarimisa', 'Aristide', NULL);
INSERT INTO person (id, name, username, title) VALUES (33, 'Andrianjakarivelo', 'Vonjy', NULL);
INSERT INTO person (id, name, username, title) VALUES (34, 'Rakotomalala', 'Zafimahery', NULL);
INSERT INTO person (id, name, username, title) VALUES (35, 'Anjeriniaina', 'Mirana', NULL);
INSERT INTO person (id, name, username, title) VALUES (36, 'Rakotondravony', 'Hery A.', NULL);
INSERT INTO person (id, name, username, title) VALUES (37, 'Irwin', 'Mitchell T.', NULL);
INSERT INTO person (id, name, username, title) VALUES (38, 'Raharison', 'Jean-Luc', NULL);
INSERT INTO person (id, name, username, title) VALUES (39, 'Roux', 'Fabrice', NULL);
INSERT INTO person (id, name, username, title) VALUES (40, 'Bejoma', 'Benitoto', NULL);
INSERT INTO person (id, name, username, title) VALUES (41, 'Cheban', 'Saoly Alfred', NULL);
INSERT INTO person (id, name, username, title) VALUES (42, 'Rejo-Fienena', 'Félicitée', NULL);
INSERT INTO person (id, name, username, title) VALUES (43, 'Tostain', 'Serge', NULL);
INSERT INTO person (id, name, username, title) VALUES (44, 'Maminirina', 'Claudette P.', NULL);
INSERT INTO person (id, name, username, title) VALUES (45, 'Appleton', 'Belinda', NULL);
INSERT INTO person (id, name, username, title) VALUES (46, 'Bradman', 'Helen M.', NULL);
INSERT INTO person (id, name, username, title) VALUES (47, 'Christidis', 'Les', NULL);
INSERT INTO person (id, name, username, title) VALUES (48, 'Lourenço', 'Wilson R.', NULL);
INSERT INTO person (id, name, username, title) VALUES (49, 'Razafindratsita', 'Vololontiana', NULL);
INSERT INTO person (id, name, username, title) VALUES (50, 'Zack', 'Steve', NULL);
INSERT INTO person (id, name, username, title) VALUES (53, 'Griffiths', 'Owen', NULL);
INSERT INTO person (id, name, username, title) VALUES (54, 'Barratt', 'Nicola', NULL);
INSERT INTO person (id, name, username, title) VALUES (55, 'Lashaway', 'Caleb', NULL);
INSERT INTO person (id, name, username, title) VALUES (56, 'Rai', 'Ashutosh', NULL);
INSERT INTO person (id, name, username, title) VALUES (57, 'Molou', 'Irfane', NULL);
INSERT INTO person (id, name, username, title) VALUES (58, 'Kartchner', 'Zachary', NULL);
INSERT INTO person (id, name, username, title) VALUES (59, 'Holley', 'Aidan', NULL);
INSERT INTO person (id, name, username, title) VALUES (60, 'Bechtolsheim', 'Matthias von', NULL);
INSERT INTO person (id, name, username, title) VALUES (61, 'Renoul', 'Julien P.', NULL);
INSERT INTO person (id, name, username, title) VALUES (62, 'Dickinson', 'Steven', NULL);
INSERT INTO person (id, name, username, title) VALUES (63, 'Berner', 'Pierre O.', NULL);
INSERT INTO person (id, name, username, title) VALUES (64, 'Phillipson', 'Peter B.', NULL);
INSERT INTO person (id, name, username, title) VALUES (65, 'Lowry II', 'Porter P.', NULL);
INSERT INTO person (id, name, username, title) VALUES (66, 'AndriamahMartin farivo', 'Lalao', NULL);
INSERT INTO person (id, name, username, title) VALUES (67, 'Antilahimena', 'Patrice', NULL);
INSERT INTO person (id, name, username, title) VALUES (68, 'Birkinshaw', 'Christopher', NULL);
INSERT INTO person (id, name, username, title) VALUES (69, 'Rakotonirina', 'Jean Claude', NULL);
INSERT INTO person (id, name, username, title) VALUES (70, 'Rall', 'Johannes L.', NULL);
INSERT INTO person (id, name, username, title) VALUES (71, 'Andriamanamihaja', 'Hasina', NULL);
INSERT INTO person (id, name, username, title) VALUES (72, 'Ravelomanana', 'Tsilavina', NULL);
INSERT INTO person (id, name, username, title) VALUES (73, 'Raheriarisena', 'Martin', NULL);
INSERT INTO person (id, name, username, title) VALUES (74, 'Ralison', 'José M.', NULL);
INSERT INTO person (id, name, username, title) VALUES (75, 'Mass', 'Vanessa', NULL);
INSERT INTO person (id, name, username, title) VALUES (76, 'Rakotondratsimba', 'Gilbert', NULL);
INSERT INTO person (id, name, username, title) VALUES (77, 'Benstead', 'Jonathan P.', NULL);
INSERT INTO person (id, name, username, title) VALUES (95, 'Rossi', 'A.', NULL);
INSERT INTO person (id, name, username, title) VALUES (78, 'Waeber', '', NULL);
INSERT INTO person (id, name, username, title) VALUES (79, 'Apanaskevich', 'D. A.', NULL);
INSERT INTO person (id, name, username, title) VALUES (82, 'Köhler', 'J.', NULL);
INSERT INTO person (id, name, username, title) VALUES (83, 'Rancilhac', 'L.', NULL);
INSERT INTO person (id, name, username, title) VALUES (85, 'Ohler', 'A.', NULL);
INSERT INTO person (id, name, username, title) VALUES (86, 'Preick', 'M.', NULL);
INSERT INTO person (id, name, username, title) VALUES (87, 'Hofreiter', 'M.', NULL);
INSERT INTO person (id, name, username, title) VALUES (88, 'Glaw', 'F.', NULL);
INSERT INTO person (id, name, username, title) VALUES (91, 'Andreone', 'F.', NULL);
INSERT INTO person (id, name, username, title) VALUES (92, 'Ratsoavina', 'F. M.', NULL);
INSERT INTO person (id, name, username, title) VALUES (94, 'Haalitschek', 'O.', NULL);
INSERT INTO person (id, name, username, title) VALUES (99, 'ANDRIANAIVO', 'Barivelo Tony David', NULL);
INSERT INTO person (id, name, username, title) VALUES (118, 'RAKOTONDRAMANANA', 'Claude Fabienne', NULL);
INSERT INTO person (id, name, username, title) VALUES (81, 'Rasolonjatovo', 'Safidy M.', NULL);
INSERT INTO person (id, name, username, title) VALUES (101, 'ANDRIANASOLO', 'Rado Mampionona', NULL);
INSERT INTO person (id, name, username, title) VALUES (102, 'ANDRIANIAINA', 'François Angelo', NULL);
INSERT INTO person (id, name, username, title) VALUES (103, 'ANDRIANOELINA FITIA', 'Lofontsiriniaina', NULL);
INSERT INTO person (id, name, username, title) VALUES (104, 'ANDRINIAINA RANDRENJARISON', 'Hermann Rico', NULL);
INSERT INTO person (id, name, username, title) VALUES (105, 'FALIARIVOLA', 'Manoa Lahatriniaina', NULL);
INSERT INTO person (id, name, username, title) VALUES (106, 'INGADY', 'Malalanirina Zo Léopolla', NULL);
INSERT INTO person (id, name, username, title) VALUES (107, 'KOFOKY', 'Amyot', NULL);
INSERT INTO person (id, name, username, title) VALUES (108, 'MAMINIRINA', 'Claudette Patricia', NULL);
INSERT INTO person (id, name, username, title) VALUES (109, 'NOROALINTSEHENO', 'Lalarivoniaina Olivà Santarni', NULL);
INSERT INTO person (id, name, username, title) VALUES (110, 'RABARISON', 'Hajatiana', NULL);
INSERT INTO person (id, name, username, title) VALUES (111, 'RABEARISOA', 'Pierre Angelo', NULL);
INSERT INTO person (id, name, username, title) VALUES (112, 'RAHARINORO', 'Njaratiana Anick', NULL);
INSERT INTO person (id, name, username, title) VALUES (113, 'RAJEMISON', 'Faneva Iharantsoa', NULL);
INSERT INTO person (id, name, username, title) VALUES (114, 'RAKOTOARIVELO', 'Andrinajoro Rianarivola', NULL);
INSERT INTO person (id, name, username, title) VALUES (115, 'RAKOTOMANGA', 'Malala Nirina', NULL);
INSERT INTO person (id, name, username, title) VALUES (116, 'RAKOTOMANGA', 'Manoa Gaël', NULL);
INSERT INTO person (id, name, username, title) VALUES (117, 'RAKOTONANDRASANA', 'Ravo Eddy Nirina', NULL);
INSERT INTO person (id, name, username, title) VALUES (119, 'RAKOTOZAFY', 'Lovasoa Manuelle Sylviane', NULL);
INSERT INTO person (id, name, username, title) VALUES (120, 'RAMAMONJISOA', 'Dina Lydia', NULL);
INSERT INTO person (id, name, username, title) VALUES (121, 'RAMANANA', 'Tojomanana Landryh', NULL);
INSERT INTO person (id, name, username, title) VALUES (122, 'RAMASINATREHINA', 'Nasolo Seheno', NULL);
INSERT INTO person (id, name, username, title) VALUES (123, 'RAMASINDRAZANA', 'Beza', NULL);
INSERT INTO person (id, name, username, title) VALUES (124, 'RANDRIAMAHERIJAONA', 'Sanjiarizaha', NULL);
INSERT INTO person (id, name, username, title) VALUES (125, 'RANDRIAMANDIMBIHAZO', 'Rindra', NULL);
INSERT INTO person (id, name, username, title) VALUES (126, 'RANDRIAMORIA', 'Toky Maheriniaina', NULL);
INSERT INTO person (id, name, username, title) VALUES (127, 'RANDRIANANTOANDRO', 'Njarasoa Claude Aimé', NULL);
INSERT INTO person (id, name, username, title) VALUES (128, 'RAOELINJANAKOLONA', 'Nasandratra Nancia', NULL);
INSERT INTO person (id, name, username, title) VALUES (129, 'RASOANORO', 'Mercia', NULL);
INSERT INTO person (id, name, username, title) VALUES (130, 'RASOMA', 'Juliana', NULL);
INSERT INTO person (id, name, username, title) VALUES (131, 'RATRIMONANARIVO', 'Harimalala Fanja', NULL);
INSERT INTO person (id, name, username, title) VALUES (132, 'RAZAFINDRANAIVO', 'Simplice', NULL);
INSERT INTO person (id, name, username, title) VALUES (133, 'ZAFINDRANORO', 'Harimpitia Haridas', NULL);
INSERT INTO person (id, name, username, title) VALUES (84, 'Rakotoarison', 'Andolalao', NULL);
INSERT INTO person (id, name, username, title) VALUES (80, 'Scherz', 'Mark D.', NULL);
INSERT INTO person (id, name, username, title) VALUES (89, 'Vences', 'Miguel', NULL);
INSERT INTO person (id, name, username, title) VALUES (90, 'Crottini', 'Angelica', NULL);
INSERT INTO person (id, name, username, title) VALUES (93, 'Vieites', 'David R.', NULL);
INSERT INTO person (id, name, username, title) VALUES (134, 'Rasolobera', 'Fifaliantsoa', NULL);
INSERT INTO person (id, name, username, title) VALUES (135, 'Ranaivoson', 'Tamby Nasaina', NULL);
INSERT INTO person (id, name, username, title) VALUES (136, 'Manana', 'Christian', NULL);
INSERT INTO person (id, name, username, title) VALUES (137, 'Rakotoarimalala', 'Fandresena', NULL);
INSERT INTO person (id, name, username, title) VALUES (138, 'Botosemily', 'Nomenjanahary', NULL);
INSERT INTO person (id, name, username, title) VALUES (140, 'Rakotoarisoa', 'Fanasina Elia', NULL);
INSERT INTO person (id, name, username, title) VALUES (141, 'Rasoarimalala', 'Maminirina Sandra', NULL);
INSERT INTO person (id, name, username, title) VALUES (142, 'Radovimiandrinifarany', 'Todisoa', NULL);
INSERT INTO person (id, name, username, title) VALUES (143, 'Razafimanantsoa', 'Tsiky Mamy', NULL);
INSERT INTO person (id, name, username, title) VALUES (144, 'Razafimandimby', 'Lanjavola', NULL);
INSERT INTO person (id, name, username, title) VALUES (145, 'Rasoarimanana Rajoniaina', 'Tantely', NULL);
INSERT INTO person (id, name, username, title) VALUES (146, 'Radasimalala', 'Vonjisoa', NULL);
INSERT INTO person (id, name, username, title) VALUES (147, 'Tahinarivony', 'Jacquis A.', NULL);
INSERT INTO person (id, name, username, title) VALUES (148, 'Pruvot', 'Yverlin Z. M', NULL);
INSERT INTO person (id, name, username, title) VALUES (149, 'Rene de Roland', 'Lily-Arison', NULL);
INSERT INTO person (id, name, username, title) VALUES (150, 'Rakotondratsima', 'Marius', NULL);
INSERT INTO person (id, name, username, title) VALUES (151, 'Razafimanjato', 'Gilbert', NULL);
INSERT INTO person (id, name, username, title) VALUES (152, 'Andriamalala', 'Tolojanahary', NULL);
INSERT INTO person (id, name, username, title) VALUES (153, 'Randrianjafiniasa', 'Donatien', NULL);
INSERT INTO person (id, name, username, title) VALUES (154, 'Razafindrakoto', 'Yvette', NULL);
INSERT INTO person (id, name, username, title) VALUES (155, 'Rabarisoa', 'Rivo', NULL);
INSERT INTO person (id, name, username, title) VALUES (156, 'Raolihanitrasina', 'Salohy E.', NULL);
INSERT INTO person (id, name, username, title) VALUES (157, 'Raobson', 'Estelle', NULL);
INSERT INTO person (id, name, username, title) VALUES (158, 'Rajemison', 'Balsama', NULL);
INSERT INTO person (id, name, username, title) VALUES (159, 'Todilahy', 'Lomeris J.', NULL);
INSERT INTO person (id, name, username, title) VALUES (161, 'Randrianarivelojosia', 'Milijaona', NULL);
INSERT INTO person (id, name, username, title) VALUES (162, 'Benjara', 'Armand', NULL);
INSERT INTO person (id, name, username, title) VALUES (163, 'Tortosa', 'Pablo', NULL);
INSERT INTO person (id, name, username, title) VALUES (164, 'Douglass', 'Kristina', NULL);
INSERT INTO person (id, name, username, title) VALUES (165, 'Godfrey', 'Laurie R.', NULL);
INSERT INTO person (id, name, username, title) VALUES (166, 'Burney', 'David A.', NULL);
INSERT INTO person (id, name, username, title) VALUES (167, 'Rasolondrainy', 'Tanambelo', NULL);
INSERT INTO person (id, name, username, title) VALUES (168, 'Ramiadantsoa', 'Tanjona', NULL);
INSERT INTO person (id, name, username, title) VALUES (169, 'Solofondranohatra', 'Cédrique L.', NULL);
INSERT INTO person (id, name, username, title) VALUES (170, 'Razanatsoa', 'Estelle', NULL);
INSERT INTO person (id, name, username, title) VALUES (171, 'Virah-Sawmy', 'Malika', NULL);
INSERT INTO person (id, name, username, title) VALUES (172, 'Woodborne', 'Stephan', NULL);
INSERT INTO person (id, name, username, title) VALUES (173, 'Callanan', 'Caitlyn', NULL);
INSERT INTO person (id, name, username, title) VALUES (174, 'Gillson', 'Lindsey', NULL);
INSERT INTO person (id, name, username, title) VALUES (175, 'Voarintsoa', 'Ny Riavo G.', NULL);
INSERT INTO person (id, name, username, title) VALUES (176, 'Ramarolahy', 'Francine Mirya', NULL);
INSERT INTO person (id, name, username, title) VALUES (177, 'Rakotozandry', 'Ravoniaina', NULL);
INSERT INTO person (id, name, username, title) VALUES (178, 'Ranaivosoa', 'Voajanahary', NULL);
INSERT INTO person (id, name, username, title) VALUES (179, 'Rasolofomanana', 'Nadia', NULL);
INSERT INTO person (id, name, username, title) VALUES (180, 'Hekkala', 'Evon', NULL);
INSERT INTO person (id, name, username, title) VALUES (181, 'Samonds', 'Karen E.', NULL);
INSERT INTO person (id, name, username, title) VALUES (182, 'Peterson', 'Faina', NULL);
INSERT INTO person (id, name, username, title) VALUES (183, 'Burns', 'Stephen J.', NULL);
INSERT INTO person (id, name, username, title) VALUES (184, 'Crowley', 'Brooke E.', NULL);
INSERT INTO person (id, name, username, title) VALUES (185, 'Scroxton', 'Nick', NULL);
INSERT INTO person (id, name, username, title) VALUES (186, 'McGee', 'David', NULL);
INSERT INTO person (id, name, username, title) VALUES (187, 'Sutherland', 'Michael R.', NULL);
INSERT INTO person (id, name, username, title) VALUES (188, 'Rasolonjatovo', 'Harimanjaka A. M.', NULL);
INSERT INTO person (id, name, username, title) VALUES (189, 'Muldoon', 'Kathleen', NULL);
INSERT INTO person (id, name, username, title) VALUES (190, 'Rakotoarijaona', 'Mamy', NULL);
INSERT INTO person (id, name, username, title) VALUES (191, 'Rahantaharivao', 'Noromamy J.', NULL);
INSERT INTO person (id, name, username, title) VALUES (192, 'Schwartz', 'Gary T.', NULL);
INSERT INTO person (id, name, username, title) VALUES (193, 'King', 'Stephen', NULL);
INSERT INTO person (id, name, username, title) VALUES (194, 'Nomenjanahary', 'Eva Stela', NULL);
INSERT INTO person (id, name, username, title) VALUES (195, 'Benjamin Z.', 'Freed', NULL);
INSERT INTO person (id, name, username, title) VALUES (196, 'Dollar', 'Luke J.', NULL);
INSERT INTO person (id, name, username, title) VALUES (197, 'Randrianasy', 'Jeannot', NULL);
INSERT INTO person (id, name, username, title) VALUES (198, 'Tovondrazane', 'Camille A.', NULL);
INSERT INTO person (id, name, username, title) VALUES (199, 'Holède', 'Bin I.', NULL);
INSERT INTO person (id, name, username, title) VALUES (200, 'Andriatsiaronandroy', 'Ricardo R.', NULL);
INSERT INTO person (id, name, username, title) VALUES (202, 'Razanakoto', 'Thierry', NULL);
INSERT INTO person (id, name, username, title) VALUES (203, 'Rabemananjara', 'Zo', NULL);
INSERT INTO person (id, name, username, title) VALUES (204, 'Ravaoherinavalona', 'Rota', NULL);
INSERT INTO person (id, name, username, title) VALUES (205, 'Roger', 'Edmond', NULL);
INSERT INTO person (id, name, username, title) VALUES (206, 'Rakouth', 'Bakolimalala', NULL);
INSERT INTO person (id, name, username, title) VALUES (207, 'Ravaomanalina', 'Bako Harisoa', NULL);
INSERT INTO person (id, name, username, title) VALUES (208, 'Walesiak', 'Michał', NULL);
INSERT INTO person (id, name, username, title) VALUES (209, 'Mittermeier', 'John C.', NULL);
INSERT INTO person (id, name, username, title) VALUES (210, 'Wright', 'Dale R.', NULL);
INSERT INTO person (id, name, username, title) VALUES (211, 'Colyn', 'Robin', NULL);
INSERT INTO person (id, name, username, title) VALUES (212, 'Gardner', 'Brett', NULL);
INSERT INTO person (id, name, username, title) VALUES (213, 'Jocque', 'Merlijn', NULL);
INSERT INTO person (id, name, username, title) VALUES (214, 'Kemp', 'Luke', NULL);
INSERT INTO person (id, name, username, title) VALUES (215, 'Rene de Roland', 'Angelinah', NULL);
INSERT INTO person (id, name, username, title) VALUES (216, 'Slootmaekers', 'Dan', NULL);
INSERT INTO person (id, name, username, title) VALUES (217, 'Glos', 'Julian', NULL);
INSERT INTO person (id, name, username, title) VALUES (218, 'Kasola', 'Charles', NULL);
INSERT INTO person (id, name, username, title) VALUES (219, 'Atrefony', 'Florent', NULL);
INSERT INTO person (id, name, username, title) VALUES (220, 'Louis', 'Fisy', NULL);
INSERT INTO person (id, name, username, title) VALUES (221, 'Odilon', 'Germany Nicolas', NULL);
INSERT INTO person (id, name, username, title) VALUES (222, 'Ralahinirina', 'Romialde Gabriel', NULL);
INSERT INTO person (id, name, username, title) VALUES (224, 'Menjanahary', 'Tahina', NULL);
INSERT INTO person (id, name, username, title) VALUES (225, 'Ratovonamana', 'Yedidya R.', NULL);
INSERT INTO person (id, name, username, title) VALUES (226, 'Lobón-Rovira', 'Javier', NULL);
INSERT INTO person (id, name, username, title) VALUES (227, 'Belluardo', 'Francesco', NULL);
INSERT INTO person (id, name, username, title) VALUES (228, 'Rasoazanany', 'Malalatiana', NULL);
INSERT INTO person (id, name, username, title) VALUES (229, 'Rosa', 'Gonçalo M.', NULL);
INSERT INTO person (id, name, username, title) VALUES (231, 'Razafimahatratra', 'Marius', NULL);
INSERT INTO person (id, name, username, title) VALUES (232, 'Vololona', 'Judith', NULL);
INSERT INTO person (id, name, username, title) VALUES (233, 'Ramamonjisoa', 'Ralalaharisoa Z.', NULL);
INSERT INTO person (id, name, username, title) VALUES (234, 'Rasoamanana', 'Elysée N.', NULL);
INSERT INTO person (id, name, username, title) VALUES (235, 'Ramavovololona', 'Perle', NULL);
INSERT INTO person (id, name, username, title) VALUES (236, 'Castillon', 'Jean-Philippe', NULL);
INSERT INTO person (id, name, username, title) VALUES (237, 'Rajaovelona', 'Landy R.', NULL);
INSERT INTO person (id, name, username, title) VALUES (238, 'Rajerison', 'Minoarisoa', NULL);
INSERT INTO person (id, name, username, title) VALUES (240, 'Razarazafy', 'Duvivier', NULL);
INSERT INTO person (id, name, username, title) VALUES (241, 'Razafimanantsoa', 'Tsiresy M.', NULL);
INSERT INTO person (id, name, username, title) VALUES (242, 'Ravelomanantsoa', 'Ny Anjara F.', NULL);
INSERT INTO person (id, name, username, title) VALUES (243, 'Razafimalala', 'Fanomezantsoa', NULL);
INSERT INTO person (id, name, username, title) VALUES (244, 'Ranivo', 'Julie', NULL);
INSERT INTO person (id, name, username, title) VALUES (245, 'Reher', 'Stephanie', NULL);
INSERT INTO person (id, name, username, title) VALUES (246, 'Schoroth', 'Marie', NULL);
INSERT INTO person (id, name, username, title) VALUES (247, 'Dausmann', 'Kathrin', NULL);
INSERT INTO person (id, name, username, title) VALUES (248, 'Randriamanana', 'Jean P.', NULL);
INSERT INTO person (id, name, username, title) VALUES (249, 'Razafindramasy', 'Onjaniaina G.', NULL);
INSERT INTO person (id, name, username, title) VALUES (250, 'Oninjatovo', 'Radonirina H.', NULL);
INSERT INTO person (id, name, username, title) VALUES (251, 'Razakafamantanantsoa', 'Antso', NULL);
INSERT INTO person (id, name, username, title) VALUES (252, 'Randrianarisata', 'Mandaniaina D. M.', NULL);
INSERT INTO person (id, name, username, title) VALUES (253, 'Benjamina', 'Gaëtan S.', NULL);
INSERT INTO person (id, name, username, title) VALUES (254, 'Raharinirina', 'Deborah', NULL);
INSERT INTO person (id, name, username, title) VALUES (256, 'Jao', 'Nantenaina M.', NULL);
INSERT INTO person (id, name, username, title) VALUES (257, 'Raharisoa', 'David M.', NULL);
INSERT INTO person (id, name, username, title) VALUES (258, 'Rakotovao', 'Frasquita', NULL);
INSERT INTO person (id, name, username, title) VALUES (259, 'Rafanoharana', 'James', NULL);
INSERT INTO person (id, name, username, title) VALUES (260, 'Rasolofoniaina', 'Bako', NULL);
INSERT INTO person (id, name, username, title) VALUES (261, 'Razafy', 'Prisca', NULL);
INSERT INTO person (id, name, username, title) VALUES (262, 'Razafimahatratra', 'Emilienne', NULL);
INSERT INTO person (id, name, username, title) VALUES (263, 'Kappeler', 'Peter M.', NULL);
INSERT INTO person (id, name, username, title) VALUES (264, 'Rafilipo', 'Luckah A.', NULL);
INSERT INTO person (id, name, username, title) VALUES (265, 'Fidy', 'Jean François S. N.', NULL);
INSERT INTO person (id, name, username, title) VALUES (266, 'Beny', 'Makboul', NULL);
INSERT INTO person (id, name, username, title) VALUES (267, 'Maeder', 'Muriel N.', NULL);
INSERT INTO person (id, name, username, title) VALUES (268, 'Raherinjafy', 'Rogelin', NULL);
INSERT INTO person (id, name, username, title) VALUES (269, 'Andriamahefa', 'Heritiana', NULL);
INSERT INTO person (id, name, username, title) VALUES (273, 'Rakotomalala', 'J. E.', NULL);
INSERT INTO person (id, name, username, title) VALUES (274, 'Proctor', 'S.', NULL);
INSERT INTO person (id, name, username, title) VALUES (275, 'Rakotondraparany', 'F.', NULL);
INSERT INTO person (id, name, username, title) VALUES (271, 'Ranirison', 'Patrick', NULL);
INSERT INTO person (id, name, username, title) VALUES (272, 'Gautier', 'Laurent', NULL);
INSERT INTO person (id, name, username, title) VALUES (282, 'Máiz-Tomé', 'L.', NULL);
INSERT INTO person (id, name, username, title) VALUES (283, 'Van Damme', 'D.', NULL);
INSERT INTO person (id, name, username, title) VALUES (284, 'Darwall', 'W. R. T.', NULL);
INSERT INTO person (id, name, username, title) VALUES (286, 'Boyer', 'S.', NULL);
INSERT INTO person (id, name, username, title) VALUES (287, 'ANDRINIAINA', 'H. A.', NULL);
INSERT INTO person (id, name, username, title) VALUES (288, 'Gauthier', 'N. E.', NULL);
INSERT INTO person (id, name, username, title) VALUES (289, 'Ravaojanahary', 'F. F.', NULL);
INSERT INTO person (id, name, username, title) VALUES (290, 'Sylvestre', 'M. H.', NULL);
INSERT INTO person (id, name, username, title) VALUES (292, 'Bamford', 'A.', NULL);
INSERT INTO person (id, name, username, title) VALUES (293, 'Rasamimanana', 'Notahinjanahary', NULL);
INSERT INTO person (id, name, username, title) VALUES (294, 'Ramahatratra', 'Edouard', NULL);
INSERT INTO person (id, name, username, title) VALUES (295, 'Ranaivonasy', 'Jeannin', NULL);
INSERT INTO person (id, name, username, title) VALUES (296, 'Richard', 'Alison', NULL);
INSERT INTO person (id, name, username, title) VALUES (297, 'Jaonarisoa', 'Enafa', NULL);
INSERT INTO person (id, name, username, title) VALUES (298, 'Youssouf Jacky', 'Ibrahim A.', NULL);
INSERT INTO person (id, name, username, title) VALUES (299, 'Fiorentino', 'Isabella', NULL);
INSERT INTO person (id, name, username, title) VALUES (300, 'Mahereza', 'Sibien', NULL);
INSERT INTO person (id, name, username, title) VALUES (301, 'Sauther', 'Michelle', NULL);
INSERT INTO person (id, name, username, title) VALUES (302, 'Efitiria', '', NULL);
INSERT INTO person (id, name, username, title) VALUES (303, 'Rahendrimanana', 'José C.', NULL);
INSERT INTO person (id, name, username, title) VALUES (304, 'Randrianandrasana', 'Andry S.', NULL);
INSERT INTO person (id, name, username, title) VALUES (305, 'Efitroarany', '', NULL);
INSERT INTO person (id, name, username, title) VALUES (306, 'Rafarasoa', 'Lala S;', NULL);
INSERT INTO person (id, name, username, title) VALUES (307, 'Ranarilalatiana', 'Tolotra', NULL);
INSERT INTO person (id, name, username, title) VALUES (308, 'Andrianantoandro', 'Aina', NULL);
INSERT INTO person (id, name, username, title) VALUES (309, 'Ravaomanarivo', 'Raveloson', NULL);
INSERT INTO person (id, name, username, title) VALUES (270, 'Rasoanaivo', 'Niry S.', NULL);
INSERT INTO person (id, name, username, title) VALUES (285, 'Beaucournu', 'Jean Claude', NULL);
INSERT INTO person (id, name, username, title) VALUES (310, 'Razafimahatratra', 'Bertrand', NULL);
INSERT INTO person (id, name, username, title) VALUES (311, 'Bader', 'Elias', NULL);
INSERT INTO person (id, name, username, title) VALUES (312, 'Acácio', 'Marta', NULL);
INSERT INTO person (id, name, username, title) VALUES (313, 'Monadjem', 'Ara', NULL);
INSERT INTO person (id, name, username, title) VALUES (314, 'Le Minter', 'Gildas', NULL);
INSERT INTO person (id, name, username, title) VALUES (315, 'Lagadec', 'Erwan', NULL);
INSERT INTO person (id, name, username, title) VALUES (316, 'Jasper', 'Louise D.', NULL);
INSERT INTO person (id, name, username, title) VALUES (317, 'Tovondrafale', 'Tsimihole', NULL);
INSERT INTO person (id, name, username, title) VALUES (318, 'Razakamanana', 'Théodore', NULL);
INSERT INTO person (id, name, username, title) VALUES (319, 'Hiroko', 'Koike', NULL);
INSERT INTO person (id, name, username, title) VALUES (320, 'Rasoamiaramanana', 'Armand', NULL);
INSERT INTO person (id, name, username, title) VALUES (321, 'Vorontsova', 'Maria S.', NULL);
INSERT INTO person (id, name, username, title) VALUES (322, 'Rakotoarisoa', 'Solofo E.', NULL);
INSERT INTO person (id, name, username, title) VALUES (323, 'Dittmann', 'Marie T.', NULL);
INSERT INTO person (id, name, username, title) VALUES (324, 'Dammhahn', 'Melanie', NULL);
INSERT INTO person (id, name, username, title) VALUES (325, 'Robert', 'Vincent', NULL);
INSERT INTO person (id, name, username, title) VALUES (326, 'Borkent', 'Art', NULL);
INSERT INTO person (id, name, username, title) VALUES (327, 'Ramamonjisoa', 'Juliot', NULL);
INSERT INTO person (id, name, username, title) VALUES (328, 'Cheke', 'Anthony S.', NULL);
INSERT INTO person (id, name, username, title) VALUES (329, 'Rocamora', 'Gérard', NULL);
INSERT INTO person (id, name, username, title) VALUES (330, 'Schoeman', 'Corrie', NULL);
INSERT INTO person (id, name, username, title) VALUES (331, 'Ralisata', 'Mahefatiana', NULL);
INSERT INTO person (id, name, username, title) VALUES (332, 'Wilkinson', 'David A.', NULL);
INSERT INTO person (id, name, username, title) VALUES (333, 'Beral', 'Marina', NULL);
INSERT INTO person (id, name, username, title) VALUES (334, 'Dietrich', 'Muriel', NULL);
INSERT INTO person (id, name, username, title) VALUES (335, 'Andriamamonjy', 'Aldus', NULL);
INSERT INTO person (id, name, username, title) VALUES (336, 'Randalana', 'Roger', NULL);
INSERT INTO person (id, name, username, title) VALUES (337, 'Middleton', 'Gregory J.', NULL);
INSERT INTO person (id, name, username, title) VALUES (338, 'Radimilahy', 'Chantal', NULL);
INSERT INTO person (id, name, username, title) VALUES (339, 'Andrianaivoarivony', 'Rafolo', NULL);
INSERT INTO person (id, name, username, title) VALUES (340, 'Rasoarifetra', 'Bako', NULL);
INSERT INTO person (id, name, username, title) VALUES (341, 'Rakotozafy', 'Lucien M. A.', NULL);
INSERT INTO person (id, name, username, title) VALUES (342, 'Chatelain', 'Cyrille', NULL);
INSERT INTO person (id, name, username, title) VALUES (343, 'Hanitrarivo', 'Mitia R.', NULL);
INSERT INTO person (id, name, username, title) VALUES (344, 'Rakotozafy', 'Brice F. L.', NULL);
INSERT INTO person (id, name, username, title) VALUES (345, 'Bolliger', 'Ralph', NULL);
INSERT INTO person (id, name, username, title) VALUES (346, 'Luino', 'Iacopo', NULL);
INSERT INTO person (id, name, username, title) VALUES (348, 'Hanitrarivo', 'Riambola M.', NULL);
INSERT INTO person (id, name, username, title) VALUES (349, 'Rasolofo', 'Nathalie', NULL);
INSERT INTO person (id, name, username, title) VALUES (350, 'Ravelomanana', 'Andrianjaka', NULL);
INSERT INTO person (id, name, username, title) VALUES (351, 'Fisher', 'Brian L.', NULL);
INSERT INTO person (id, name, username, title) VALUES (352, 'Randriandimbimahazo', 'Rindra', NULL);
INSERT INTO person (id, name, username, title) VALUES (353, 'Markolf', 'Matthias', NULL);
INSERT INTO person (id, name, username, title) VALUES (354, 'Lührs', 'Mia-Lana', NULL);
INSERT INTO person (id, name, username, title) VALUES (355, 'Thalmann', 'Urs', NULL);
INSERT INTO person (id, name, username, title) VALUES (356, 'Andriaharimalala', 'Tahiana', NULL);
INSERT INTO person (id, name, username, title) VALUES (357, 'Rajeriarison', 'Charlotte', NULL);
INSERT INTO person (id, name, username, title) VALUES (358, 'Letsara', 'Rokiman', NULL);
INSERT INTO person (id, name, username, title) VALUES (359, 'Almeda', 'Frank', NULL);
INSERT INTO person (id, name, username, title) VALUES (360, 'Rakotoarison', 'Fenonirina', NULL);
INSERT INTO person (id, name, username, title) VALUES (362, 'Chanu', 'Lalandy', NULL);
INSERT INTO person (id, name, username, title) VALUES (363, 'Goetze', 'Dethardt', NULL);
INSERT INTO person (id, name, username, title) VALUES (364, 'Thorén', 'Sandra', NULL);
INSERT INTO person (id, name, username, title) VALUES (365, 'Porembski', 'Stefan', NULL);
INSERT INTO person (id, name, username, title) VALUES (366, 'Radespiel', 'Ute', NULL);
INSERT INTO person (id, name, username, title) VALUES (367, 'Schnoell', 'Anna V.', NULL);
INSERT INTO person (id, name, username, title) VALUES (368, 'Sam', 'The Seing', NULL);
INSERT INTO person (id, name, username, title) VALUES (369, 'Rakotonavalona', 'Andrilalao M.', NULL);
INSERT INTO person (id, name, username, title) VALUES (370, 'Fatroandrianjafinonjasolomiovazo', 'Tolojanahary N. L.', NULL);
INSERT INTO person (id, name, username, title) VALUES (371, 'Rasoamampionona', 'Noromalala R.', NULL);
INSERT INTO person (id, name, username, title) VALUES (373, 'Parent', 'Sara N.', NULL);
INSERT INTO person (id, name, username, title) VALUES (374, 'Ranarijaona', 'Hery Lisy T.', NULL);
INSERT INTO person (id, name, username, title) VALUES (375, 'Nantenaina', 'Donald A.', NULL);
INSERT INTO person (id, name, username, title) VALUES (376, 'Andrianasetra', 'Georges S.', NULL);
INSERT INTO person (id, name, username, title) VALUES (377, 'Barthélémy', 'Daniel', NULL);
INSERT INTO person (id, name, username, title) VALUES (378, 'Caraglio', 'Yves', NULL);
INSERT INTO person (id, name, username, title) VALUES (379, 'Edelin', 'Claude', NULL);
INSERT INTO person (id, name, username, title) VALUES (380, 'Rasoma', 'Rahantavololona V. J', NULL);
INSERT INTO person (id, name, username, title) VALUES (381, 'Ranivoarivelo', 'Soazara', NULL);
INSERT INTO person (id, name, username, title) VALUES (382, 'Marquard', 'Matthias', NULL);
INSERT INTO person (id, name, username, title) VALUES (383, 'Ramilijaona', 'Olga R.', NULL);
INSERT INTO person (id, name, username, title) VALUES (384, 'Rakotomalala', 'Domoina', NULL);
INSERT INTO person (id, name, username, title) VALUES (385, 'Callmander', 'Martin', NULL);
INSERT INTO person (id, name, username, title) VALUES (386, 'Nusbaumer', 'Louis', NULL);
INSERT INTO person (id, name, username, title) VALUES (387, 'Herbert', 'David G.', NULL);
INSERT INTO person (id, name, username, title) VALUES (388, 'Vincke', 'Xavier', NULL);
INSERT INTO person (id, name, username, title) VALUES (389, 'Rakotondranary', 'Jacques', NULL);
INSERT INTO person (id, name, username, title) VALUES (400, 'Peeters', 'Christian', NULL);


--
-- Data for Name: activityperson; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO activityperson (id, idactivity, idperson) VALUES (8, 70, 25);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (12, 74, 48);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (13, 74, 95);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (14, 74, 29);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (15, 74, 78);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (16, 75, 79);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (17, 75, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (18, 76, 79);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (19, 76, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (20, 76, 3);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (21, 77, 79);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (22, 77, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (23, 78, 79);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (24, 78, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (25, 79, 80);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (26, 79, 81);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (27, 79, 82);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (28, 79, 83);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (29, 79, 84);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (30, 79, 85);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (31, 79, 86);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (32, 79, 87);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (33, 79, 88);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (34, 79, 89);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (35, 79, 1);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (36, 80, 88);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (37, 80, 80);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (38, 80, 84);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (39, 80, 1);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (40, 80, 90);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (41, 80, 1);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (42, 80, 91);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (43, 80, 82);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (44, 80, 89);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (45, 81, 92);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (46, 81, 93);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (47, 81, 94);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (48, 81, 88);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (49, 81, 1);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (50, 81, 84);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (51, 81, 89);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (52, 81, 80);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (53, 82, 92);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (54, 82, 93);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (55, 82, 94);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (56, 82, 88);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (57, 82, 1);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (58, 82, 84);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (59, 82, 89);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (60, 82, 80);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (85, 132, 2);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (86, 132, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (88, 132, 391);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (89, 133, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (90, 133, 2);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (91, 134, 2);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (92, 134, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (93, 135, 2);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (94, 135, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (95, 136, 3);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (96, 136, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (97, 137, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (98, 137, 2);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (99, 137, 105);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (100, 138, 105);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (101, 138, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (102, 138, 32);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (103, 138, 2);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (104, 139, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (106, 141, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (107, 142, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (110, 146, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (111, 148, 3);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (112, 148, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (113, 148, 232);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (116, 73, 27);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (117, 72, 26);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (118, 69, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (119, 68, 20);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (120, 67, 25);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (121, 150, 2);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (122, 143, 392);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (123, 149, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (124, 64, 22);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (125, 65, 23);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (126, 66, 24);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (127, 63, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (128, 131, 4);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (129, 131, 18);
INSERT INTO activityperson (id, idactivity, idperson) VALUES (130, 131, 29);


INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$320000$nkcaCOpE7ULdtuPnMpwu0x$E1EoIGghemdmcj6UPpQ5uWaSwCOUY79vWHkcakwpbJU=', '2022-11-24 05:29:17.916474-01', true, 'Vahatra', '', '', 'rotsyvonimanitra@hotmail.com', true, true, '2022-09-29 10:57:53.533944-01');


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO department (id, name) VALUES (1, 'Department of Animal Biology');
INSERT INTO department (id, name) VALUES (2, 'Department of Water and Forests');
INSERT INTO department (id, name) VALUES (3, 'Tierökologie und Naturschutz');
INSERT INTO department (id, name) VALUES (4, 'Biological Science Department');
INSERT INTO department (id, name) VALUES (5, 'Institut des Sciences et Techniques de l’Environnement (ISTE)');
INSERT INTO department (id, name) VALUES (6, 'School of Agronomy, Forest Department');



INSERT INTO location (id, name, longitude, latitude) VALUES (1, 'Anjahamarina', 50.35, -15.0833);
INSERT INTO location (id, name, longitude, latitude) VALUES (2, 'Ambavala', 49.6167, -16.2);
INSERT INTO location (id, name, longitude, latitude) VALUES (3, 'Ambalamanasy', 49.95, -13.7333);
INSERT INTO location (id, name, longitude, latitude) VALUES (4, 'Antanimbaribe', 46.85, -17.1833);
INSERT INTO location (id, name, longitude, latitude) VALUES (5, 'Manantenina', 47.3167, -24.2833);
INSERT INTO location (id, name, longitude, latitude) VALUES (6, 'Belambo', 47.3167, -17.8);
INSERT INTO location (id, name, longitude, latitude) VALUES (7, 'Maroambihy', 49.85, -14.5);
INSERT INTO location (id, name, longitude, latitude) VALUES (8, 'Analanambe', 49.95, -14.4);
INSERT INTO location (id, name, longitude, latitude) VALUES (9, 'Ambodivoara', 47.5167, -18.1667);
INSERT INTO location (id, name, longitude, latitude) VALUES (10, 'Ambariotelo', 48.36667, -13.4333);
INSERT INTO location (id, name, longitude, latitude) VALUES (11, 'Betsiaka', 49.237267499999, -13.1581959);
INSERT INTO location (id, name, longitude, latitude) VALUES (12, 'Marotolana', 49.03333, -14.61667);
INSERT INTO location (id, name, longitude, latitude) VALUES (13, 'Marovato', 48.9167, -12.6667);
INSERT INTO location (id, name, longitude, latitude) VALUES (14, 'Bemanevika', 47.9333, -16.1833);
INSERT INTO location (id, name, longitude, latitude) VALUES (15, 'Ampatakamaroreny', 48.8, -16.4833);
INSERT INTO location (id, name, longitude, latitude) VALUES (16, 'Antsiatsiaka', 49.3667, -17.0333);
INSERT INTO location (id, name, longitude, latitude) VALUES (17, 'Antsiraka', 49.6167, -16.2667);
INSERT INTO location (id, name, longitude, latitude) VALUES (18, 'Marotandrano', 48.70795, -16.42044);
INSERT INTO location (id, name, longitude, latitude) VALUES (19, 'Djangoa', 48.3167, -13.7833);
INSERT INTO location (id, name, longitude, latitude) VALUES (20, 'Ankaramibe', 48.17956506, -13.9752602);
INSERT INTO location (id, name, longitude, latitude) VALUES (21, 'Ankaramikely', 48.1667, -14.0167);
INSERT INTO location (id, name, longitude, latitude) VALUES (22, 'Analanatsoa', 49.766667, -14.433333);
INSERT INTO location (id, name, longitude, latitude) VALUES (23, 'Maromandia', 48.0833, -14.2167);
INSERT INTO location (id, name, longitude, latitude) VALUES (24, 'Ankitsika', 48.3833, -17.3167);
INSERT INTO location (id, name, longitude, latitude) VALUES (25, 'Ambarijeby', 47.95, -14.6667);
INSERT INTO location (id, name, longitude, latitude) VALUES (26, 'Anjiamangirana', 47.7833, -15.1667);
INSERT INTO location (id, name, longitude, latitude) VALUES (27, 'Tsimanampetsotsa', 43.74921, -24.12882);
INSERT INTO location (id, name, longitude, latitude) VALUES (28, 'Salary Bay', 43.284246, -22.5547423);
INSERT INTO location (id, name, longitude, latitude) VALUES (29, 'Lakato', 48.4333, -19.1833);
INSERT INTO location (id, name, longitude, latitude) VALUES (31, 'Ambohitantely', 47.2833, -18.1667);
INSERT INTO location (id, name, longitude, latitude) VALUES (32, 'Tampolo Fenérive-Est', 49.9667, -15.7333);
INSERT INTO location (id, name, longitude, latitude) VALUES (33, 'Midongy du Sud', 47.0167, -23.5833);
INSERT INTO location (id, name, longitude, latitude) VALUES (34, 'Bemaraha', 45.1667, -19.3333);
INSERT INTO location (id, name, longitude, latitude) VALUES (35, 'Marojejy', 49.7333, -14.4333);
INSERT INTO location (id, name, longitude, latitude) VALUES (36, 'Daraina', 49.6667, -13.2);
INSERT INTO location (id, name, longitude, latitude) VALUES (37, 'Ankarana', 48.5, -16.95);
INSERT INTO location (id, name, longitude, latitude) VALUES (38, 'Ankazomivady', 47.1833, -20.7667);
INSERT INTO location (id, name, longitude, latitude) VALUES (40, 'Ankaratra', 47.2, -19.4167);
INSERT INTO location (id, name, longitude, latitude) VALUES (41, 'Maromiza', 48.45, -18.95);
INSERT INTO location (id, name, longitude, latitude) VALUES (42, 'Mikea', 43.3833, -22.5);
INSERT INTO location (id, name, longitude, latitude) VALUES (43, 'Nosy Hara', 49.0167, -12.2333);
INSERT INTO location (id, name, longitude, latitude) VALUES (44, 'Anjozorobe', 47.8667, -18.4);
INSERT INTO location (id, name, longitude, latitude) VALUES (45, 'Kirindy-Mitea', 44.138666112, -20.806163442);
INSERT INTO location (id, name, longitude, latitude) VALUES (46, 'Ambatovy', 48.3, -18.8167);
INSERT INTO location (id, name, longitude, latitude) VALUES (47, 'Beanka', 44.559567, -17.925304);
INSERT INTO location (id, name, longitude, latitude) VALUES (48, 'Andohahela', 46.7, -24.6);
INSERT INTO location (id, name, longitude, latitude) VALUES (30, 'Andranomena', 44.33333, -21.46667);
INSERT INTO location (id, name, longitude, latitude) VALUES (39, 'Andranomay', 47.95, -18.5);
INSERT INTO location (id, name, longitude, latitude) VALUES (49, 'Botswana', 23.22740233055, -22.246415281866987);


--
-- Data for Name: visit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (42, NULL, 42, 27);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (37, NULL, 37, 31);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (47, NULL, 47, 38);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (36, NULL, 36, 29);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (40, NULL, 40, 32);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (41, NULL, 41, 33);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (38, NULL, 38, 41);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (50, NULL, 50, 32);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (52, '2003-03-01', 52, 42);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (53, '2005-10-01', 53, 43);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (54, '2006-02-01', 54, 44);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (55, '2007-03-01', 55, 45);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (56, '2008-03-01', 56, 33);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (57, '2009-02-01', 57, 46);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (58, '2010-04-01', 58, 30);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (59, NULL, 59, 47);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (61, NULL, 61, 14);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (60, NULL, 60, 28);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (39, NULL, 39, 31);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (62, '2022-12-15', 62, 48);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (6, NULL, 6, 6);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (17, NULL, 17, 17);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (18, NULL, 18, 18);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (19, NULL, 19, 19);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (20, NULL, 20, 20);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (21, NULL, 21, 21);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (22, NULL, 22, 22);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (23, NULL, 23, 23);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (24, NULL, 24, 24);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (2, NULL, 2, 2);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (3, NULL, 3, 3);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (4, NULL, 4, 4);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (12, NULL, 12, 12);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (13, NULL, 13, 13);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (14, NULL, 14, 14);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (15, NULL, 15, 15);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (16, NULL, 16, 16);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (5, NULL, 5, 5);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (11, NULL, 11, 11);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (7, NULL, 7, 7);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (8, NULL, 8, 8);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (35, NULL, 35, 30);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (9, NULL, 9, 9);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (10, NULL, 10, 10);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (1, NULL, 1, 1);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (25, NULL, 25, 25);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (26, NULL, 26, 26);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (48, NULL, 48, 31);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (28, NULL, 28, 27);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (30, NULL, 30, 27);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (32, NULL, 32, 27);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (33, NULL, 33, 28);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (49, NULL, 49, 39);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (51, NULL, 51, 40);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (46, NULL, 46, 37);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (27, NULL, 27, 27);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (29, NULL, 29, 14);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (43, NULL, 43, 34);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (31, NULL, 31, 14);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (45, NULL, 45, 36);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (34, NULL, 34, 29);
INSERT INTO visit (id, dateend, idactivity, idlocation) VALUES (44, NULL, 44, 35);


--
-- Data for Name: fieldschool; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (1, 1, 2, 27);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (2, 4, 16, 27);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (3, 5, 3, 27);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (4, 1, 2, 28);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (5, 4, 16, 28);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (6, 5, 3, 28);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (7, 1, 2, 29);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (8, 1, 2, 30);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (9, 2, 9, 30);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (10, 4, 16, 30);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (11, 5, 3, 30);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (12, 1, 2, 31);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (13, 1, 2, 32);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (14, 4, 16, 32);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (15, 5, 3, 32);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (16, 1, 2, 33);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (17, 4, 16, 33);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (18, NULL, 17, 33);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (19, NULL, 18, 33);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (20, 1, 2, 34);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (21, NULL, 17, 34);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (22, NULL, 18, 34);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (23, 1, 2, 35);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (24, NULL, 18, 35);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (25, 1, 2, 36);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (26, NULL, 17, 36);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (27, 1, 2, 37);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (28, 1, 2, 38);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (29, NULL, 17, 38);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (30, NULL, 19, 38);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (31, 1, 2, 39);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (32, NULL, 5, 39);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (33, 1, 2, 40);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (34, 6, 9, 40);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (35, 1, 2, 41);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (36, 1, 2, 42);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (37, 1, 2, 43);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (38, 1, 2, 44);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (39, 1, 2, 45);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (40, 1, 2, 46);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (41, 1, 2, 47);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (42, NULL, 5, 47);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (43, 1, 2, 48);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (44, 1, 2, 49);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (45, 1, 2, 50);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (46, 6, 9, 50);
INSERT INTO fieldschool (id, iddept, idinst, idvisit) VALUES (47, 1, 2, 51);


--
-- Data for Name: imagetype; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO imagetype (id, type, type_en, type_fr) VALUES (1, 'avifauna', 'avifauna', 'avifaune');
INSERT INTO imagetype (id, type, type_en, type_fr) VALUES (2, 'herpetofauna', 'herpetofauna', 'herpétofaune');
INSERT INTO imagetype (id, type, type_en, type_fr) VALUES (3, 'small mammal', 'small mammal', 'petit mammifère');
INSERT INTO imagetype (id, type, type_en, type_fr) VALUES (4, 'primate', 'primate', 'primate');
INSERT INTO imagetype (id, type, type_en, type_fr) VALUES (5, 'landscape', 'landscape', 'paysage');
INSERT INTO imagetype (id, type, type_en, type_fr) VALUES (6, 'miscellaneous', 'miscellaneous', 'divers');
INSERT INTO imagetype (id, type, type_en, type_fr) VALUES (7, 'team', 'team', 'équipe');


--
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO image (id, name, title, idtype) VALUES (73, 'a3.webp', 'Calumma nasutum roosts_AKL', 2);
INSERT INTO image (id, name, title, idtype) VALUES (74, 'a6.webp', 'Uroplatus phantasticus', 2);
INSERT INTO image (id, name, title, idtype) VALUES (72, 'a2.webp', 'Boophis boehmei', 2);
INSERT INTO image (id, name, title, idtype) VALUES (60, 'a1.webp', 'Amna', 4);
INSERT INTO image (id, name, title, idtype) VALUES (61, 'Avy_166.webp', 'Micro leilahytsara', 4);
INSERT INTO image (id, name, title, idtype) VALUES (63, 'Eulemur_coronatus.webp', 'Eulemur coronatus', 4);
INSERT INTO image (id, name, title, idtype) VALUES (62, 'Bokar_032.webp', 'Bokar 032', 4);
INSERT INTO image (id, name, title, idtype) VALUES (64, 'Alcedo_vintsioides.webp', 'Alcedo vintsioides', 1);
INSERT INTO image (id, name, title, idtype) VALUES (65, 'Amena_295.webp', 'Amena 295', 1);
INSERT INTO image (id, name, title, idtype) VALUES (66, 'Copsychus_albospecularis.webp', 'Copsychus albospecularis', 1);
INSERT INTO image (id, name, title, idtype) VALUES (67, 'Corythornis_madagascariensis.webp', 'Corythornis madagascariensis', 1);
INSERT INTO image (id, name, title, idtype) VALUES (68, 'Euryceros_prevostii.webp', 'Euryceros prevostii', 1);
INSERT INTO image (id, name, title, idtype) VALUES (69, 'Monticola_sharpei_female.webp', 'Monticola sharpei female', 1);
INSERT INTO image (id, name, title, idtype) VALUES (70, 'Neodrepanis_coruscans.webp', 'Neodrepanis coruscans', 1);
INSERT INTO image (id, name, title, idtype) VALUES (71, 'Sahafina_176.webp', 'Sahafina 176', 1);
INSERT INTO image (id, name, title, idtype) VALUES (75, 'Boophis_marojezensis_ZHM.webp', 'Boophis marojezensis ZHM', 2);
INSERT INTO image (id, name, title, idtype) VALUES (76, 'Furcifer_pardalis.webp', 'Furcifer pardalis', 2);
INSERT INTO image (id, name, title, idtype) VALUES (78, 'Amna_046.webp', 'Amna 046', 3);
INSERT INTO image (id, name, title, idtype) VALUES (79, 'Microgale_principula_1.webp', 'Microgale principula 1', 3);
INSERT INTO image (id, name, title, idtype) VALUES (80, 'Miza_242.webp', 'Miza 242', 3);
INSERT INTO image (id, name, title, idtype) VALUES (81, 'a7.webp', 'a7', 5);
INSERT INTO image (id, name, title, idtype) VALUES (82, 'a8.webp', 'a8', 5);
INSERT INTO image (id, name, title, idtype) VALUES (83, 'Amna_001.webp', 'Amna 001', 5);
INSERT INTO image (id, name, title, idtype) VALUES (84, 'banniere3.webp', 'banniere3', 5);
INSERT INTO image (id, name, title, idtype) VALUES (85, 'Bea_354.webp', 'Bea 354', 5);
INSERT INTO image (id, name, title, idtype) VALUES (86, 'DSC_0153.webp', 'DSC 0153', 5);
INSERT INTO image (id, name, title, idtype) VALUES (87, 'DSC_0702.webp', 'DSC 0702', 5);
INSERT INTO image (id, name, title, idtype) VALUES (88, 'DSCN9380.webp', 'DSCN9380', 5);
INSERT INTO image (id, name, title, idtype) VALUES (89, 'DSCN9463.webp', 'DSCN9463', 5);
INSERT INTO image (id, name, title, idtype) VALUES (90, 'Landscape_MF_view.webp', 'Landscape MF view', 5);
INSERT INTO image (id, name, title, idtype) VALUES (91, 'P1760372.webp', 'P1760372', 5);
INSERT INTO image (id, name, title, idtype) VALUES (92, 'Reserve_Naturelle_Ankarana_2.webp', 'Réserve Naturelle Ankarana 2', 5);
INSERT INTO image (id, name, title, idtype) VALUES (93, 'Reserve_Naturelle_Ankarana_3.webp', 'Réserve Naturelle Ankarana 3', 5);
INSERT INTO image (id, name, title, idtype) VALUES (95, 'DSC_0587.webp', 'DSC 0587', 7);
INSERT INTO image (id, name, title, idtype) VALUES (96, 'IMG_4999.webp', 'IMG 4999', 7);
INSERT INTO image (id, name, title, idtype) VALUES (97, 'Photos_146.webp', 'Photos 146', 7);
INSERT INTO image (id, name, title, idtype) VALUES (98, 'Ampas_196.webp', 'Ampas 196', 6);
INSERT INTO image (id, name, title, idtype) VALUES (100, 'BB_MRT.webp', 'BB MRT', 6);
INSERT INTO image (id, name, title, idtype) VALUES (101, 'Bea_291.webp', 'Bea 291', 6);
INSERT INTO image (id, name, title, idtype) VALUES (102, 'IMG_5951.webp', 'IMG 5951', 6);
INSERT INTO image (id, name, title, idtype) VALUES (103, 'IMG_8773.webp', 'IMG 8773', 6);
INSERT INTO image (id, name, title, idtype) VALUES (104, 'Insectes_Ankarafa.webp', 'Insectes Ankarafa', 6);
INSERT INTO image (id, name, title, idtype) VALUES (105, 'MD_029.webp', 'MD 029', 6);
INSERT INTO image (id, name, title, idtype) VALUES (107, 'Amena_035.webp', 'Amena 035', 7);
INSERT INTO image (id, name, title, idtype) VALUES (108, 'BEA_113.webp', 'BEA 113', 7);
INSERT INTO image (id, name, title, idtype) VALUES (112, 'Beman_037.webp', 'Beman 037', 7);
INSERT INTO image (id, name, title, idtype) VALUES (113, 'IMG_1444.webp', 'IMG 1444', 5);
INSERT INTO image (id, name, title, idtype) VALUES (114, 'DSC_0553.webp', 'DSC 0553', 5);
INSERT INTO image (id, name, title, idtype) VALUES (115, 'DSC_0918.webp', 'DSC 0918', 5);
INSERT INTO image (id, name, title, idtype) VALUES (106, 'aaa_be_primate.webp', 'Microcebus jonahi', 4);
INSERT INTO image (id, name, title, idtype) VALUES (118, 'Coua_olivaceiceps_jpg.webp', 'Coua olivaceiceps ', 1);
INSERT INTO image (id, name, title, idtype) VALUES (119, 'Falculea_palliata_jpg.webp', 'Falculea palliata ', 1);
INSERT INTO image (id, name, title, idtype) VALUES (120, 'Upupa_marginata_jpg.webp', 'Upupa marginata ', 1);
INSERT INTO image (id, name, title, idtype) VALUES (121, 'Xanthomixis_zosterops_jpg.webp', 'Xanthomixis zosterops ', 1);
INSERT INTO image (id, name, title, idtype) VALUES (116, 'Calicalicus_madagascariensis_jpg.webp', 'Calicalicus madagascariensis', 1);
INSERT INTO image (id, name, title, idtype) VALUES (117, 'Copsychus_albospecularis_oisillons_jpg.webp', 'Copsychus albospecularis oisillons', 1);
INSERT INTO image (id, name, title, idtype) VALUES (122, 'Brookesia_superciliaris_1_jpg.webp', 'Brookesia superciliaris 1 ', 2);
INSERT INTO image (id, name, title, idtype) VALUES (123, 'Calumma_brevicorne_jpg.webp', 'Calumma brevicorne ', 2);
INSERT INTO image (id, name, title, idtype) VALUES (124, 'Lycrodryas_pseudogranuliceps_jpg.webp', 'Lycrodryas pseudogranuliceps ', 2);
INSERT INTO image (id, name, title, idtype) VALUES (125, 'Sanzinia_madagascariensis_1_jpg.webp', 'Sanzinia madagascariensis 1 ', 2);
INSERT INTO image (id, name, title, idtype) VALUES (126, 'Uroplatus_phantasticus_jpg.webp', 'Uroplatus phantasticus ', 2);
INSERT INTO image (id, name, title, idtype) VALUES (127, 'Uroplatus_sikorae_jpg.webp', 'Uroplatus sikorae ', 2);
INSERT INTO image (id, name, title, idtype) VALUES (128, 'Dyscophus_antongili_jpg.webp', 'Dyscophus antongili ', 2);
INSERT INTO image (id, name, title, idtype) VALUES (129, 'Geochelone_radiata_jpg.webp', 'Geochelone radiata ', 2);
INSERT INTO image (id, name, title, idtype) VALUES (130, 'Gephiromantis_jpg.webp', 'Gephiromantis ', 2);
INSERT INTO image (id, name, title, idtype) VALUES (131, 'Eliurus_minor_jpg.webp', 'Eliurus minor ', 3);
INSERT INTO image (id, name, title, idtype) VALUES (132, 'Gymnuromys_roberti_jpg.webp', 'Gymnuromys roberti ', 3);
INSERT INTO image (id, name, title, idtype) VALUES (133, 'Hipposideros_commersoni_jpg.webp', 'Hipposideros commersoni ', 3);
INSERT INTO image (id, name, title, idtype) VALUES (134, 'Myotis_goudoti_jpg.webp', 'Myotis goudoti ', 3);
INSERT INTO image (id, name, title, idtype) VALUES (135, 'Voalavo_antsahabensis1_jpg.webp', 'Voalavo antsahabensis1 ', 3);
INSERT INTO image (id, name, title, idtype) VALUES (136, 'Baobab_jpg.webp', 'Baobab ', 5);
INSERT INTO image (id, name, title, idtype) VALUES (137, 'Cascade_jpg.webp', 'Cascade ', 5);
INSERT INTO image (id, name, title, idtype) VALUES (138, 'Midongy_jpg.webp', 'Midongy ', 5);
INSERT INTO image (id, name, title, idtype) VALUES (139, 'Pic_Boby1_jpg.webp', 'Pic Boby1 ', 5);
INSERT INTO image (id, name, title, idtype) VALUES (140, 'Sakalava_house_jpg.webp', 'Sakalava house ', 5);
INSERT INTO image (id, name, title, idtype) VALUES (141, 'Sunrise1_jpg.webp', 'Sunrise1 ', 5);
INSERT INTO image (id, name, title, idtype) VALUES (142, 'Sunset2_JPG.webp', 'Sunset2 JPG', 5);
INSERT INTO image (id, name, title, idtype) VALUES (143, 'Argema_mittrei_jpg.webp', 'Argema mittrei ', 6);
INSERT INTO image (id, name, title, idtype) VALUES (144, 'Butterfly2_jpg.webp', 'Butterfly2 ', 6);
INSERT INTO image (id, name, title, idtype) VALUES (145, 'Butterfly4_jpg.webp', 'Butterfly4 ', 6);
INSERT INTO image (id, name, title, idtype) VALUES (146, 'Children3_jpg.webp', 'Children3 ', 6);
INSERT INTO image (id, name, title, idtype) VALUES (147, 'Mushroom04_jpg.webp', 'Mushroom04 ', 6);
INSERT INTO image (id, name, title, idtype) VALUES (148, 'Mushroom05_jpg.webp', 'Mushroom05 ', 6);
INSERT INTO image (id, name, title, idtype) VALUES (149, 'Field_School1_jpg.webp', 'Field School1 ', 7);
INSERT INTO image (id, name, title, idtype) VALUES (151, 'Team13_jpg.webp', 'Team13 ', 7);
INSERT INTO image (id, name, title, idtype) VALUES (152, 'Team21_jpg.webp', 'Team21 ', 7);
INSERT INTO image (id, name, title, idtype) VALUES (153, 'Team22_jpg.webp', 'Team22 ', 7);
INSERT INTO image (id, name, title, idtype) VALUES (154, 'Team51_jpg.webp', 'Team51 ', 7);
INSERT INTO image (id, name, title, idtype) VALUES (155, 'Team55_jpg.webp', 'Team55 ', 7);


--
-- Data for Name: typemember; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO typemember (id, type, description, description_en, description_fr, type_en, type_fr) VALUES (2, 'scientists', 'They are the founding members of the association.', 'They are the founding members of the association.', 'Ce sont les membres fondateurs de l''association.', 'scientists', 'scientifiques');
INSERT INTO typemember (id, type, description, description_en, description_fr, type_en, type_fr) VALUES (4, 'staff', 'The current staff includes seven individuals', 'The current staff includes seven individuals', 'Le personnel actuel comprend sept personnes', 'staff', 'personnels');
INSERT INTO typemember (id, type, description, description_en, description_fr, type_en, type_fr) VALUES (3, 'students', 'Students enrolled within the Malagasy university system, particularly in the field of biology and environmental ecology, are the principal focus of the Vahatra program to help with their advancement and capacity building. We aim at having 12-15 students working with us at any given time. Once a student has finished their degree, the place is open for another incoming student.', 'Students enrolled within the Malagasy university system, particularly in the field of biology and environmental ecology, are the principal focus of the Vahatra program to help with their advancement and capacity building. We aim at having 12-15 students working with us at any given time. Once a student has finished their degree, the place is open for another incoming student.', 'Les étudiants inscrits dans le système universitaire malgache, en particulier dans le domaine de la biologie et l''écologie environnementale, sont les principales cibles du programme de Vahatra, qui vise leur promotion et le renforcement de leur capacité. Notre but est d''avoir 12 à 15 étudiants qui travaillent avec nous à un moment donné. Une fois que l''étudiant a eu son diplôme, sa place est disponible pour un autre étudiant.', 'students', 'étudiants');
INSERT INTO typemember (id, type, description, description_en, description_fr, type_en, type_fr) VALUES (1, 'board of directors', 'In the context of providing clear and long-term advice for the development of new programs and the management of the association, Vahatra places considerable importance on the board of directors.', 'In the context of providing clear and long-term advice for the development of new programs and the management of the association, Vahatra places considerable importance on the board of directors.', 'C’est dans le but de viser plus loin, avec plus de prévoyance et une vision claire et pragmatique que Vahatra a mis un accent particulier sur l’importance du comité de Conseil.', 'board of directors', 'comité de conseil');


--
-- Data for Name: member; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (2, 'jraherilalao@gmail.com', 'Founding member. She has interests in ornithology including biology, ecology, systematics, biogeography, biological evaluation, and the study of environmental impact. Responsible for teaching of bird biology for second year students as well as evolutionary biology and biodiversity evaluation, especially terrestrial vertebrates for master level students.', 2, 2, 'marie_jeanne.webp', 'Founding member. She has interests in ornithology including biology, ecology, systematics, biogeography, biological evaluation, and the study of environmental impact. Responsible for teaching of bird biology for second year students as well as evolutionary biology and biodiversity evaluation, especially terrestrial vertebrates for master level students.', 'Membre fondatrice. Elle s’intéresse à l’ornithologie en général incluant la biologie, l’écologie, la systématique, la biogéographie, l’évaluation biologique et l’étude d’impact environnemental. Responsable de l''enseignement de la biologie des oiseaux en deuxième année ; de l’évolution biologique et de l’évaluation de la biodiversité surtout les vertébrés terrestres au niveau du Master. ');
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (12, NULL, NULL, 12, 1, 'Conseil_Ratsifandrihamanana_Nanie.webp', NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (11, NULL, 'He is actually retired', 11, 1, 'Pr_Daniel.webp', 'He is actually retired', 'Il est actuellement retraité');
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (25, NULL, NULL, 99, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (28, NULL, NULL, 101, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (29, NULL, NULL, 102, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (30, NULL, NULL, 103, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (31, NULL, NULL, 104, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (32, NULL, NULL, 105, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (33, NULL, NULL, 106, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (34, NULL, NULL, 107, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (35, NULL, NULL, 108, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (36, NULL, NULL, 109, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (37, NULL, NULL, 110, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (38, NULL, NULL, 111, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (39, NULL, NULL, 112, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (40, NULL, NULL, 113, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (41, NULL, NULL, 114, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (42, NULL, NULL, 115, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (43, NULL, NULL, 116, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (44, NULL, NULL, 117, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (45, NULL, NULL, 118, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (46, NULL, NULL, 119, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (47, NULL, NULL, 120, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (48, NULL, NULL, 121, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (49, NULL, NULL, 122, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (50, NULL, NULL, 123, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (51, NULL, NULL, 124, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (52, NULL, NULL, 125, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (53, NULL, NULL, 126, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (54, NULL, NULL, 127, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (55, NULL, NULL, 128, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (56, NULL, NULL, 129, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (57, NULL, NULL, 130, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (58, NULL, NULL, 131, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (59, NULL, NULL, 132, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (60, NULL, NULL, 133, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (61, NULL, NULL, 134, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (62, NULL, NULL, 135, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (63, NULL, NULL, 136, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (64, NULL, NULL, 137, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (65, NULL, NULL, 138, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (67, NULL, NULL, 140, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (68, NULL, NULL, 141, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (69, NULL, NULL, 142, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (70, NULL, NULL, 143, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (71, NULL, NULL, 144, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (72, NULL, NULL, 145, 3, NULL, NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (19, NULL, NULL, 19, 1, 'none.webp', NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (4, 'sgoodman@fieldmuseum.org', ' Founding member. His fields of research interests include several domains such as mammals, bats and birds. He is particularly interested in biology, ecology, systematics, biogeography, paleoecology, etc.', 4, 2, 'steve.webp', ' Founding member. His fields of research interests include several domains such as mammals, bats and birds. He is particularly interested in biology, ecology, systematics, biogeography, paleoecology, etc.', 'Membre fondateur. ses champs d’intérêt dans le domaine de la recherche touchent les mammifères, surtout les petits mammifères et carnivores  incluant la systématique, la biogéographie, l’écologie, l’évaluation biologique et l’étude d’impact environnemental. Responsable de l’enseignement de l’écologie et la systématique animale en première et deuxième années ; la conservation et la valorisation de la biodiversité en troisième année. ');
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (9, NULL, NULL, 9, 4, 'staff_Mara_Avy.webp', NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (8, NULL, NULL, 8, 4, 'staff_Elisa.webp', NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (5, 'msraharinirina@gmail.com', 'Sabrina joined the association in October 2015.', 5, 4, 'staff_Sabrina_Raharinirina.webp', 'Sabrina joined the association in October 2015.', 'Sabrina a rejoint l''association en octobre 2015.');
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (6, NULL, ' Ledada

started working with the ETP some 29 years ago and transferred to

Vahatra in October 2007. He has helped organize logistics for hundreds

of field missions to some of the remotest areas on Madagascar.', 7, 4, 'staff_Rachel-Ledada.webp', ' Ledada

started working with the ETP some 29 years ago and transferred to

Vahatra in October 2007. He has helped organize logistics for hundreds

of field missions to some of the remotest areas on Madagascar.', 'Ledada a commencé à travailler avec l''ETP il y a environ 29 ans et a été transféré à Vahatra en octobre 2007. Il a aidé à organiser la logistique de centaines de missions sur le terrain dans certaines des régions les plus reculées de Madagascar.');
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (10, NULL, NULL, 10, 4, 'staff_Francois_Tsitindria.webp', NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (7, NULL, 'She has worked with

Vahatra since May 2016.', 6, 4, 'staff_Haingo.webp', 'She has worked with

Vahatra since May 2016.', 'Elle travaille pour Vahatra depuis mai 2016.');
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (17, NULL, NULL, 17, 1, 'Conseil_Raoelina_Andriambololona.webp', NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (15, NULL, NULL, 15, 1, 'Conseil_Joelisoa_Ratsirarson.webp', NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (14, NULL, NULL, 14, 1, 'Conseil_Chantal_Andrianarivo.webp', NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (16, NULL, NULL, 16, 1, 'Jean_Chrysostome_Rakotoary.webp', NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (18, NULL, NULL, 18, 1, 'jganzhorn.webp', NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (21, NULL, NULL, 21, 1, 'Leadership_Polsky_489x489.webp', NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (20, NULL, NULL, 20, 1, 'AVT_Olivier-Langrand_4944.webp', NULL, NULL);
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (13, NULL, 'He died in 2022 ✞', 13, 1, 'Conseil_Ratrimoarivony_Guy.webp', 'He died in 2022 ✞', 'Il est mort en 2022 ✞');
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (3, 'voahangysoarimalala@gmail.com', 'Founding member. Her research interests include mammals, especially small mammals and carnivores which includes systematics, biogeography, ecology, biological evaluation and environmental impact study. Responsible for teaching ecology and animal systematics for first and second year students; biodiversity conservation and valorisation for third year students.', 3, 2, 'voahangy.webp', 'Founding member. Her research interests include mammals, especially small mammals and carnivores which includes systematics, biogeography, ecology, biological evaluation and environmental impact study. Responsible for teaching ecology and animal systematics for first and second year students; biodiversity conservation and valorisation for third year students.', 'Membre fondatrice. Ses champs d’intérêt dans le domaine de la recherche touchent les mammifères, surtout les petits mammifères et carnivores  incluant la systématique, la biogéographie, l’écologie, l’évaluation biologique et l’étude d’impact environnemental. Responsable de l’enseignement de l’écologie et la systématique animale en première et deuxième années ; la conservation et la valorisation de la biodiversité en troisième année. ');
INSERT INTO member (id, mail, description, idperson, idtypemember, image, description_en, description_fr) VALUES (1, 'raselimananaachille@gmail.com', 'Founding member. His fields of interest include herpetology, including systematics, biogeography, ecology and biological evaluation as well as study of environmental impact. Responsible for courses on reptiles and amphibians biology for second year students as well as biogeography, ecological monitoring and ecomorphology for master level students.', 1, 2, 'achille.webp', 'Founding member. His fields of interest include herpetology, including systematics, biogeography, ecology and biological evaluation as well as study of environmental impact. Responsible for courses on reptiles and amphibians biology for second year students as well as biogeography, ecological monitoring and ecomorphology for master level students.', 'Membre fondateur. Ses champs d’intérêt touchent l’herpétologie en général, incluant la systématique, la biogéographie, l’écologie, l’évaluation biologique et l’étude d’impact environnemental. Responsable de l''enseignement de la biologie des reptiles et amphibiens en deuxième année ; de la biogéographie, du suivi écologique et de l’éco-morphologie au niveau de Master. Responsable du cours sur le diagnostique biologique au niveau du DESS. ');


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO post (id, name, name_en, name_fr) VALUES (15, 'logistic coordinator', 'logistic coordinator', 'responsable logistique');
INSERT INTO post (id, name, name_en, name_fr) VALUES (1, 'president', 'president', 'président');
INSERT INTO post (id, name, name_en, name_fr) VALUES (2, 'professor', 'professor', 'professeur');
INSERT INTO post (id, name, name_en, name_fr) VALUES (3, 'scientific member', 'scientific member', 'scientifique');
INSERT INTO post (id, name, name_en, name_fr) VALUES (4, 'ornithologist', 'ornithologist', 'ornithologue');
INSERT INTO post (id, name, name_en, name_fr) VALUES (5, 'chef editor of Malagasy Nature', 'chef editor of Malagasy Nature', 'rédacteur en chef de Malagasy Nature');
INSERT INTO post (id, name, name_en, name_fr) VALUES (6, 'scientific coordinator', 'scientific coordinator', 'coordinateur scientifique');
INSERT INTO post (id, name, name_en, name_fr) VALUES (7, 'mammalogist', 'mammalogist', 'mammologue');
INSERT INTO post (id, name, name_en, name_fr) VALUES (9, 'head museum curator', 'head museum curator', 'conservateur en chef du musée');
INSERT INTO post (id, name, name_en, name_fr) VALUES (10, 'scientific advisor', 'scientific advisor', 'conseiller scientifique');
INSERT INTO post (id, name, name_en, name_fr) VALUES (11, 'vice president', 'vice president', 'vice président');
INSERT INTO post (id, name, name_en, name_fr) VALUES (12, 'co-editor of Malagasy Nature', 'co-editor of Malagasy Nature', 'co-rédacteur de Malagasy Nature');
INSERT INTO post (id, name, name_en, name_fr) VALUES (13, 'docteur honoris causa', 'docteur honoris causa', 'docteur honoris causa');
INSERT INTO post (id, name, name_en, name_fr) VALUES (14, 'financial & administration manager', 'financial & administration manager', 'responsable financier et administratif');
INSERT INTO post (id, name, name_en, name_fr) VALUES (16, 'domestic help', 'domestic help', 'femme de ménage');
INSERT INTO post (id, name, name_en, name_fr) VALUES (19, 'country director', 'country director', 'country director');
INSERT INTO post (id, name, name_en, name_fr) VALUES (20, 'général de corps d''armée', 'général de corps d''armée', 'général de corps d''armée');
INSERT INTO post (id, name, name_en, name_fr) VALUES (21, 'Center for Diplomatic and Strategic studies', 'Center for Diplomatic and Strategic studies', 'Centre d''études diplomatiques et stratégiques');
INSERT INTO post (id, name, name_en, name_fr) VALUES (22, 'former head of research and biodiversity', 'former head of research and biodiversity', 'responsable de la recherche et de la biodiversité');
INSERT INTO post (id, name, name_en, name_fr) VALUES (23, 'technical advisor', 'technical advisor', 'conseiller technique');
INSERT INTO post (id, name, name_en, name_fr) VALUES (24, 'ex-vice president', 'ex-vice president', 'ex-vice président');
INSERT INTO post (id, name, name_en, name_fr) VALUES (25, 'ex-general director', 'ex-general director', 'ex-directeur général');
INSERT INTO post (id, name, name_en, name_fr) VALUES (26, 'principal', 'principal', 'principal');
INSERT INTO post (id, name, name_en, name_fr) VALUES (27, 'executive director', 'executive director', 'directeur exécutif');
INSERT INTO post (id, name, name_en, name_fr) VALUES (28, 'director', 'director', 'directeur');
INSERT INTO post (id, name, name_en, name_fr) VALUES (17, 'guardian', 'guardian', 'gardien');
INSERT INTO post (id, name, name_en, name_fr) VALUES (18, 'gardener', 'gardener', 'jardinier');


--
-- Data for Name: memberpostinst; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (1, NULL, 1, 1, 1);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (2, 1, 2, 1, 2);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (3, NULL, 1, 2, 3);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (4, NULL, 1, 2, 4);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (5, NULL, 1, 2, 5);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (6, 1, 2, 2, 2);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (7, NULL, 1, 3, 3);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (8, NULL, 1, 3, 6);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (9, NULL, 1, 3, 7);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (10, 1, 2, 3, 9);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (11, 1, 3, 3, 2);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (12, NULL, 1, 4, 10);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (13, NULL, 1, 4, 11);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (14, NULL, 1, 4, 12);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (15, 1, 2, 4, 13);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (16, 1, 2, 4, 2);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (17, 1, 4, 4, 2);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (18, NULL, 1, 5, 14);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (19, NULL, 1, 6, 15);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (20, NULL, 1, 7, 16);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (21, NULL, 1, 8, 17);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (22, NULL, 1, 8, 18);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (23, NULL, 1, 9, 17);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (24, NULL, 1, 9, 18);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (25, NULL, 1, 10, 17);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (26, NULL, 1, 10, 18);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (27, 1, 2, 11, 2);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (28, NULL, 5, 12, 19);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (29, NULL, NULL, 13, 20);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (30, NULL, NULL, 13, 21);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (31, NULL, 6, 13, 28);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (32, NULL, 7, 14, 22);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (33, NULL, 8, 14, 23);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (34, 2, 9, 15, 2);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (35, NULL, 2, 15, 24);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (36, NULL, 10, 16, 25);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (37, NULL, 11, 17, 25);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (38, 3, 12, 18, 2);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (39, NULL, 13, 19, 26);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (40, NULL, 14, 20, 27);
INSERT INTO memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (41, NULL, 15, 21, 1);


--
-- Data for Name: messageofyear; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO messageofyear (id, year, description, idmember, description_en, description_fr) VALUES (1, 2021, '<blockquote><p>" Après deux années successives d''angoisse dans l''ombre de la pandémie Covid-19, vivre et travailler plus sereinement durant l''année 2021 était le souhait de tous, avec l''espoir de rattraper beaucoup de choses qui n''ont pas pu être faites en 2020.</p><p>Malheureusement, la situation n''a fait qu''empirer en 2021, malgré les précautions prises à une échelle jusqu''alors inimaginable pour empêcher la propagation de la maladie et les efforts de vaccination associés. Les impacts de Covid-19 sont multiples, non seulement dans les domaines de la santé et du travail, mais aussi en réorientant la vie et la dynamique de la société en général, ainsi que des communautés locales et internationales.</p><p>Avec l''inquiétude d''être contaminé, la peur et la panique règnent partout et les gens ont peur d''être en contact avec leurs amis et même leur famille. À cela s''ajoutent les nombreuses personnes qui sont tombées malades et, pire encore, celles qui ont succombé au virus. C''est une psychose totale. La vie s''est ralentie et plane dans une angoisse sans limite, sans que personne ne puisse dire comment et quand elle va se terminer.</p><p>Ici à Madagascar, en raison de l''absence d''une diffusion claire de l''information, la situation est largement inconnue en ce qui concerne la prévalence de la maladie dans la société malgache et le nombre de décès ; au moment de la rédaction de ce message, seulement 3 % environ de la population de Madagascar a été vaccinée.</p><p>Cependant, nous sommes conscients que ce n''est pas le moment de perdre espoir. Apprendre à vivre avec la situation qui prévaut est la meilleure stratégie pour traverser cette période difficile. C''est dans cet esprit d''harmonisation du mode de vie, même dans les conditions existantes, que l''Association Vahatra a pu avancer avec une certaine sérénité jusqu''en 2021. Les membres et les étudiants affiliés à l''association ont été vaccinés à 100%, certains avec des rappels, et ont pris les précautions nécessaires dans les contextes sociaux pour mieux se protéger les uns les autres et avec l''intention de compléter ce qui était prévu d''être accompli en 2021.</p><p>Ainsi, malgré les difficultés et les conditions incertaines dans lesquelles nous avons dû travailler, l''association a pu réaliser de nombreuses réalisations importantes.</p><p>&nbsp;Il s''agit par exemple d''<strong>inventaires biologiques à grande échelle</strong>, dans le cadre du projet BIOCOM en collaboration avec l''UNESCO et avec le financement de l''Agence Coréenne de Coopération Internationale (KOICA), qui ont été réalisés dans les aires protégées de la Montagne des Français en mars et du Marojejy en octobre et novembre.&nbsp;</p><p>En outre, cette année, nous avons pu lancer un nouveau projet ambitieux grâce au financement de <strong>Save the Rainforest Sweden</strong>, qui vise à soutenir les efforts de conservation de l''aire protégée d''Ambohitantely par le biais de trois axes différents : la recherche sur les insectes aquatiques, la restauration écologique, y compris l''installation à grande échelle de coupe-feu autour des forêts restantes, et l''établissement d''une station biologique multifonctionnelle. Le projet Ambohitantely illustre la volonté de l''association d''avoir une approche large de ses interventions directement nécessaires à la gestion et à la protection de la biodiversité, en plus de ce que nous faisons depuis de nombreuses années en matière de recherche, de<strong> diffusion d''informations sur la biodiversité de l''île et de renforcement des capacités humaines</strong>.</p><p>&nbsp;Pris ensemble, ces différents aspects contribuent à faire progresser la perspective nationale sur l''importance de la science et à former toute une série de jeunes scientifiques malgaches, ce qui, au final, permet de protéger le patrimoine naturel de l''île. En outre, le portail <strong>Madagascar Protected Areas</strong> est opérationnel et une version révisée du projet titanesque en trois volumes The Terrestrial Protected Areas of Madagascar : Their History, Description and Biota publié par Vahatra en 2018 est désormais sous forme de livre électronique (voir <a href="http://www.press.uchicago.edu/ucp/books/publisher/pu3431914_3431915.html">http://www.press.uchicago.edu/ucp/books/publisher/pu3431914_3431915.html</a> ).</p><p>En outre, malgré une série de restrictions Covid-19, le personnel et les étudiants associés à Vahatra ont présenté un mémoire HDR, deux thèses de doctorat et cinq masters, ainsi qu''un large assortiment d''articles scientifiques en cours de publication ou soumis. Certes, la crise sanitaire mondiale actuelle est un cauchemar pour toute institution quel que soit son domaine d''intervention, mais accepter de vivre avec la situation actuelle et trouver d''autres solutions pour surmonter le défi est la seule voie possible.</p><p>Espérons qu''avec les expériences déjà vécues au cours de cette dernière année fatidique, nous serons tous en mesure d''affronter 2022 avec une perspective nouvelle et positive et avec plus d''espoir pour l''avenir.</p><p>Bonne chance à tous, car avec un cœur vaillant, rien n''est impossible !"&nbsp;</p></blockquote>', 1, '<blockquote><p>" After two successive years of anguish in the shadow of the Covid-19 pandemic, living and working in greater serenity during the year 2021 was everyone’s wish and with the hope of catching up with much that could not be done in 2020.&nbsp;</p><p>Unfortunately, the situation has only worsened in 2021, despite the precautions taken at a previously non-imaginable scale to prevent the spread of the disease and the associated vaccination efforts. The impacts of Covid-19 are multiple not only in the domains of health and work, but also redirecting the life and dynamics of society in general, as well as local and international communities.</p><p>With the worry of being contaminated, fear and panic reign everywhere and people are afraid of being in contact with their friends and even families. Superimposed on this is the many individuals that fell sick and worse those that succumbed to the virus. It is a total psychosis. Life has slowed down and hovers in limitless anxiety, without anyone being able to say how and when it will end.</p><p>Here in Madagascar associated with the lack of clear dissemination of information, the situation is largely unknown concerning the prevalence of the disease in Malagasy society and the number of deaths; at the time of writing this message only about 3% of the population of Madagascar has being vaccinated.&nbsp;</p><p>However, we realize that this is not a time for the lighthearted, that is to say to give up hope. Learning to live with the prevailing situation is the best strategy to cross this difficult period. It is in this spirit of harmonizing the way of life, even given the existing conditions, that the Association Vahatra has been able to advance with some level of serenity through the year 2021. The members and students affiliated with the association have been 100% fully vaccinated, some already with boosters, and taking the needed precautions in social contexts to protect better one other and with the intent to complete what was planned to be accomplish in 2021.</p><p>Thus, despite the difficulties and uncertain conditions in which we had to work, the association was able to make numerous important achievements. These include, for example, <strong>large-scale biological inventories</strong>, as part of the BIOCOM project in collaboration with UNESCO with funding from The Korea International Cooperation Agency (KOICA) that were carried out in the protected areas of Montagne des Français in March and in the Marojejy in October and November. In addition, this year we were able to launch an ambitious new project with funding from <strong>Save the Rainforest Sweden</strong> that aims to support the efforts to conserve the Ambohitantely protected area via three different axes: research on aquatic insects; ecological restoration, including a the large-scale installation of firebreaks surrounding the remaining forests; and the establishment of a multifunctional biological station. The Ambohitantely project illustrates the association’s desire to have a broad approach to its interventions directly needed to the management and protection of biodiversity, in addition to what we have been doing for many years concerning research, <strong>dissemination of information on the island’s biodiversity, and human capacity building</strong>.</p><p>Taken together these different aspects help to advance the national perspective on the importance of science and train a whole range of young Malagasy scientists, which in the end is to protect the natural patrimony of the island. In addition, the<strong> Madagascar Protected Areas portal</strong> is up and functioning and a revised version of the three volume titanic project The Terrestrial Protected Areas of Madagascar: Their History, Description and Biota published by Vahatra in 2018 is now in e-book form (see<a href=" http://www.press.uchicago.edu/ucp/books/publisher/pu3431914_3431915.html"> http://www.press.uchicago.edu/ucp/books/publisher/pu3431914_3431915.html</a> ).</p><p>In addition, despite a range of Covid-19 restrictions, the staff and students associated with Vahatra presented an HDR memoir, two PhD thesis, and five Masters, as well as a large assortment of scientific articles being published or submitted. Admittedly, the current world health crisis is a nightmare for any institution whatever their field of intervention, but accepting to live with the current situation and finding other solutions to overcome the challenge is the only way forward.</p><p>Let us hope that with the experiences already lived during this past fateful year, we will all be able to face 2022 with a new and positive perspective and with more hope for the future.</p><p>&nbsp;</p><p>Good luck to all because with a valiant heart nothing is impossible! "</p></blockquote><p>&nbsp;</p>', '<blockquote><p>" Après deux années successives d''angoisse dans l''ombre de la pandémie Covid-19, vivre et travailler plus sereinement durant l''année 2021 était le souhait de tous, avec l''espoir de rattraper beaucoup de choses qui n''ont pas pu être faites en 2020.</p><p>Malheureusement, la situation n''a fait qu''empirer en 2021, malgré les précautions prises à une échelle jusqu''alors inimaginable pour empêcher la propagation de la maladie et les efforts de vaccination associés. Les impacts de Covid-19 sont multiples, non seulement dans les domaines de la santé et du travail, mais aussi en réorientant la vie et la dynamique de la société en général, ainsi que des communautés locales et internationales.</p><p>Avec l''inquiétude d''être contaminé, la peur et la panique règnent partout et les gens ont peur d''être en contact avec leurs amis et même leur famille. À cela s''ajoutent les nombreuses personnes qui sont tombées malades et, pire encore, celles qui ont succombé au virus. C''est une psychose totale. La vie s''est ralentie et plane dans une angoisse sans limite, sans que personne ne puisse dire comment et quand elle va se terminer.</p><p>Ici à Madagascar, en raison de l''absence d''une diffusion claire de l''information, la situation est largement inconnue en ce qui concerne la prévalence de la maladie dans la société malgache et le nombre de décès ; au moment de la rédaction de ce message, seulement 3 % environ de la population de Madagascar a été vaccinée.</p><p>Cependant, nous sommes conscients que ce n''est pas le moment de perdre espoir. Apprendre à vivre avec la situation qui prévaut est la meilleure stratégie pour traverser cette période difficile. C''est dans cet esprit d''harmonisation du mode de vie, même dans les conditions existantes, que l''Association Vahatra a pu avancer avec une certaine sérénité jusqu''en 2021. Les membres et les étudiants affiliés à l''association ont été vaccinés à 100%, certains avec des rappels, et ont pris les précautions nécessaires dans les contextes sociaux pour mieux se protéger les uns les autres et avec l''intention de compléter ce qui était prévu d''être accompli en 2021.</p><p>Ainsi, malgré les difficultés et les conditions incertaines dans lesquelles nous avons dû travailler, l''association a pu réaliser de nombreuses réalisations importantes.</p><p>&nbsp;Il s''agit par exemple d''<strong>inventaires biologiques à grande échelle</strong>, dans le cadre du projet BIOCOM en collaboration avec l''UNESCO et avec le financement de l''Agence Coréenne de Coopération Internationale (KOICA), qui ont été réalisés dans les aires protégées de la Montagne des Français en mars et du Marojejy en octobre et novembre.&nbsp;</p><p>En outre, cette année, nous avons pu lancer un nouveau projet ambitieux grâce au financement de <strong>Save the Rainforest Sweden</strong>, qui vise à soutenir les efforts de conservation de l''aire protégée d''Ambohitantely par le biais de trois axes différents : la recherche sur les insectes aquatiques, la restauration écologique, y compris l''installation à grande échelle de coupe-feu autour des forêts restantes, et l''établissement d''une station biologique multifonctionnelle. Le projet Ambohitantely illustre la volonté de l''association d''avoir une approche large de ses interventions directement nécessaires à la gestion et à la protection de la biodiversité, en plus de ce que nous faisons depuis de nombreuses années en matière de recherche, de<strong> diffusion d''informations sur la biodiversité de l''île et de renforcement des capacités humaines</strong>.</p><p>&nbsp;Pris ensemble, ces différents aspects contribuent à faire progresser la perspective nationale sur l''importance de la science et à former toute une série de jeunes scientifiques malgaches, ce qui, au final, permet de protéger le patrimoine naturel de l''île. En outre, le portail <strong>Madagascar Protected Areas</strong> est opérationnel et une version révisée du projet titanesque en trois volumes The Terrestrial Protected Areas of Madagascar : Their History, Description and Biota publié par Vahatra en 2018 est désormais sous forme de livre électronique (voir <a href="http://www.press.uchicago.edu/ucp/books/publisher/pu3431914_3431915.html">http://www.press.uchicago.edu/ucp/books/publisher/pu3431914_3431915.html</a> ).</p><p>En outre, malgré une série de restrictions Covid-19, le personnel et les étudiants associés à Vahatra ont présenté un mémoire HDR, deux thèses de doctorat et cinq masters, ainsi qu''un large assortiment d''articles scientifiques en cours de publication ou soumis. Certes, la crise sanitaire mondiale actuelle est un cauchemar pour toute institution quel que soit son domaine d''intervention, mais accepter de vivre avec la situation actuelle et trouver d''autres solutions pour surmonter le défi est la seule voie possible.</p><p>Espérons qu''avec les expériences déjà vécues au cours de cette dernière année fatidique, nous serons tous en mesure d''affronter 2022 avec une perspective nouvelle et positive et avec plus d''espoir pour l''avenir.</p><p>Bonne chance à tous, car avec un cœur vaillant, rien n''est impossible !"&nbsp;</p></blockquote>');


--
-- Data for Name: partner; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO partner (id, description, link, logo, idinst, isLink, description_en, description_fr) VALUES (1, 'working for the creation and delimitation of new protected areas on Madagascar.', 'https://protectedareas.mg/', 'protected-areas.webp', 31, false, 'working for the creation and delimitation of new protected areas on Madagascar.', 'contribution à la création et à la délimitation des nouvelles Aires Protégées à Madagascar.');
INSERT INTO partner (id, description, link, logo, idinst, isLink, description_en, description_fr) VALUES (2, ' helping with the establishment of a Biodiversity Business Operational Program (BBOP)', 'https://ambatovy.com/en/', 'ambatovy.webp', 37, false, ' helping with the establishment of a Biodiversity Business Operational Program (BBOP)', 'contribution dans la mise en œuvre du BBOP (Biodiversity Business Operational Program)');
INSERT INTO partner (id, description, link, logo, idinst, isLink, description_en, description_fr) VALUES (4, 'biological evaluation and analysis of human pressures in a new UNESCO site.', 'https://tanymeva.org/', 'tanymeva.webp', 33, false, 'biological evaluation and analysis of human pressures in a new UNESCO site.', 'Evaluation éco-biologique et analyse des pressions, des menaces et des potentialités.');
INSERT INTO partner (id, description, link, logo, idinst, isLink, description_en, description_fr) VALUES (5, 'scientific aid in evaluating biodiversity and training of field agents.', 'https://www.parcs-madagascar.com/', 'mnp.webp', 7, false, 'scientific aid in evaluating biodiversity and training of field agents.', ' Evaluation éco-biologique et analyse des pressions, des menaces et des potentialités – contribution à l’appui scientifique et à la formation des agents de PNM(Parcs National de Madagascar).');
INSERT INTO partner (id, description, link, logo, idinst, isLink, description_en, description_fr) VALUES (7, ' helping with the preparation of national report for the Convention on Biodiversity.', 'https://www.environnement.mg/', 'logo-medd-presidence.webp', 35, false, ' helping with the preparation of national report for the Convention on Biodiversity.', ' contribution dans la préparation du rapport national pour la CDB (Convention sur la Diversité Biologique). ');
INSERT INTO partner (id, description, link, logo, idinst, isLink, description_en, description_fr) VALUES (8, 'Capacity building for conservation agents and students. This project is generously funded by Helmsley Charitable Trust (HCT)', 'https://www.peregrinefund.org/', 'peregrine.webp', 36, false, 'Capacity building for conservation agents and students. This project is generously funded by Helmsley Charitable Trust (HCT)', 'Renforcement de capacité des agents de conservation et des étudiants - Ce projet est généreusement financé par Helmsley Charitable Trust.');
INSERT INTO partner (id, description, link, logo, idinst, isLink, description_en, description_fr) VALUES (3, 'Specialist in data exploitation and tools development for the management and conservation through modeling based on scientific information on biodiversity and ecological data.', 'https://www.rebioma.org/', 'rebioma.webp', 32, false, 'Specialist in data exploitation and tools development for the management and conservation through modeling based on scientific information on biodiversity and ecological data.', 'Spécialiste dans l''exploitation des données et dans le développement des outils au service de la gestion et de la conservation à travers la modélisation basée sur des informations scientifiques sur la biodiversité et les données écologiques.');
INSERT INTO partner (id, description, link, logo, idinst, isLink, description_en, description_fr) VALUES (6, ' helping with the compilation of data concerning Malagasy taxa.', 'https://cites.org/eng', 'cites.webp', 34, false, ' helping with the compilation of data concerning Malagasy taxa.', 'Contribution à la compilation des données pour la CITES à travers l’appui en matière d’information au Secrétariat Permanent, à l’autorité scientifique et à l’organe de gestion.');


--
-- Data for Name: typepublication; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO typepublication (id, type, type_en, type_fr) VALUES (1, 'Malagasy Nature', 'Malagasy Nature', 'Malagasy Nature');
INSERT INTO typepublication (id, type, type_en, type_fr) VALUES (2, 'Guides', 'Guides', 'Guides');
INSERT INTO typepublication (id, type, type_en, type_fr) VALUES (3, 'Other publications', 'Other publications', 'Autres publications');


--
-- Data for Name: publication; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (21, 'Les amphibiens des zones arides du Sud et de l''Ouest de Madagascar', 'pp 180 and 129 figures', '2014-01-01', 2, 'g6.webp', 'g6_back.webp', 'pp 180 and 129 figures', 'pp 180 et129 figures');
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (20, 'Les animaux et écosystèmes de l''Holocène disparus de Madagascar', 'pp 249, 34 figures and 20 plates.', '2013-01-01', 2, 'g5.webp', 'g5_back.webp', 'pp 249, 34 figures and 20 plates.', 'pp 249, 34 figures et 20 plates.');
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (17, 'Les petits mammifères de Madagascar', '176 pp and 100 figures.', '2011-01-01', 2, 'g2.webp', 'g2_back.webp', '176 pp and 100 figures.', '176 pp et 100 figures.');
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (18, 'Histoire naturelle des familles et sous-familles endémiques d''oiseaux de Madagascar', 'pp 148 and 54 figures.', '2011-01-01', 2, 'g3.webp', 'g3_back.webp', 'pp 148 and 54 figures.', 'pp 148 et 54 figures.');
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (28, 'The terrestrial protected areas of Madagascar: their history, description and biota.', NULL, '2021-04-15', 3, '978-2-9570997-1-9-frontcover.webp', 'op4_back.webp', NULL, NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (1, 'Volume 1 - Les forêts sèches de Madagascar', 'This first issue of Malagasy Nature is a monograph of 200 pages on Madagascar dry forests, associated with inventories conducted by a group of scientists in Madagascar, which are among the founding members of the Association Vahatra.', '2009-01-01', 1, 'mn1.webp', NULL, 'This first issue of Malagasy Nature is a monograph of 200 pages on Madagascar dry forests, associated with inventories conducted by a group of scientists in Madagascar, which are among the founding members of the Association Vahatra.', 'Ce premier numéro de Malagasy Nature est une monographie de 200 pages sur les forêts sèches de Madagascar, associée à des inventaires réalisés par un groupe de scientifiques malgaches, qui font partie des membres fondateurs de l''Association Vahatra.');
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (24, 'Libellules et demoiselles de Madagascar et des Iles de l’Océan Indien occidentale / Dragonflies and damselflies of Madagascar and the western Indian Ocean Islands', 'A bilingual French-English book. 194 pp.', '2021-01-01', 2, 'g9.webp', 'g9_back.webp', 'A bilingual French-English book. 194 pp.', 'Un livre bilingue français-anglais. 194 pages.');
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (23, 'Fourmis de Madagascar : un guide pour les 62 genres / Ants of Madagascar: a guide for the 62 genera', 'A bilingual French-English book. 253 pp.', '2019-01-01', 2, 'g8.webp', 'g8_back.webp', 'A bilingual French-English book. 253 pp.', 'Un livre bilingue français-anglais. 253 pages.');
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (22, 'Les amphibiens du Nord de Madagascar', 'pp 354 and 197 figures, with pictograms.', '2018-01-01', 2, 'g7.webp', 'g7_back.webp', 'pp 354 and 197 figures, with pictograms.', 'pp 354 et 197 figures, avec pictogrammes.');
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (13, 'Volume 13', '', '2019-01-01', 1, 'mn13.webp', 'mn13_back.webp', '', NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (5, 'Volume 5', '', '2011-01-01', 1, 'mn5.webp', NULL, '', NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (14, 'Volume 14', '', '2020-01-01', 1, 'mn14.webp', 'mn14_back.webp', '', NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (7, 'Volume 7', '', '2013-01-01', 1, 'mn7.webp', NULL, '', NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (15, 'Volume 15', '', '2021-01-01', 1, 'mn15.webp', 'mn15_back.webp', '', NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (8, 'Volume 8', '', '2014-01-01', 1, 'mn8.webp', NULL, '', NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (9, 'Volume 9', '', '2015-01-01', 1, 'mn9.webp', NULL, '', NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (10, 'Volume 10', '', '2016-01-01', 1, 'mn10.webp', NULL, '', NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (26, '1990-2014 Memoirs and thesis', '', '2015-01-01', 3, 'memandthesis.webp', NULL, '', NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (11, 'Volume 11', '', '2017-01-01', 1, 'mn11.webp', NULL, '', NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (25, '1990-2014 Publications', '', '2014-12-31', 3, '2014pubs.webp', NULL, '', NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (6, 'Volume 6', '', '2012-01-01', 1, 'mn6.webp', NULL, '', NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (19, 'Les Carnivora de Madagascar', 'pp 158 and 73 figures.', '2012-01-01', 2, 'g4.webp', 'g4_back.webp', 'pp 158 and 73 figures.', 'pp 158 et 73 figures.');
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (16, 'Les chauves-souris de Madagascar', '129 pp and 77 figures.', '2011-01-01', 2, 'g1.webp', 'g1_back.webp', '129 pp and 77 figures.', '129 pp et 77 figures.');
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (39, 'Volume 16', NULL, '2022-10-01', 1, 'covmn16.webp', 'covmn16_back.webp', NULL, NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (12, 'Volume 12', '', '2017-02-01', 1, 'mn12.webp', 'mn12_back.webp', '', NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (2, 'Volume 2', '', '2009-02-01', 1, 'mn2.webp', NULL, '', NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (4, 'Volume 4', '', '2010-02-01', 1, 'mn4.webp', NULL, '', NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (27, 'Atlas d''une selection de vertébrés terrestres de Madagascar', 'While the past few decades have seen numerous publications about the extraordinary and highly endemic terrestrial vertebrate fauna of Madagascar, ranging from technical papers, to species descriptions, and field guides, no detailed mapping exercise has been completed in the form of an atlas. The purpose of this book is that, to bring together information from numerous sources and present distributional maps for a wide range of taxa, descriptive texts to interpret patterns, and, for most, habitat models (Maxent). For the different reptiles, birds, and mammals treated herein, this atlas is intended as a reference for students, researchers, naturalists, and conservationists.', '2013-01-01', 3, 'op3.webp', 'op3_back.webp', 'While the past few decades have seen numerous publications about the extraordinary and highly endemic terrestrial vertebrate fauna of Madagascar, ranging from technical papers, to species descriptions, and field guides, no detailed mapping exercise has been completed in the form of an atlas. The purpose of this book is that, to bring together information from numerous sources and present distributional maps for a wide range of taxa, descriptive texts to interpret patterns, and, for most, habitat models (Maxent). For the different reptiles, birds, and mammals treated herein, this atlas is intended as a reference for students, researchers, naturalists, and conservationists.', 'Alors que les dernières décennies ont vu de nombreuses publications sur l''extraordinaire et hautement endémique faune vertébrée terrestre de Madagascar, allant des articles techniques, aux descriptions d''espèces, et aux guides de terrain, 

aucun exercice de cartographie détaillée n''a été réalisé sous la forme d''un atlas.



L''objectif de cet ouvrage est donc de rassembler des informations provenant de nombreuses sources et de présenter des cartes de distribution pour un large éventail de taxons, des textes descriptifs permettant d''interpréter les modèles et, pour la plupart, des modèles d''habitat (Maxent). Pour les différents reptiles, oiseaux et mammifères qui y sont traités, cet atlas se veut une référence pour les étudiants, les chercheurs, les naturalistes et les défenseurs de la nature.');
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (29, 'The New Natural History of Madagascar', 'En 2003, Steve Goodman et Jonathan P. Benstead (Université de Géorgie)

ont publié un gros volume (+1700 pages) intitulé The Natural History

de Madagascar (University of Chicago Press).



Steve était le premier éditeur

et le principal contributeur à ce volume, qui a été largement salué - par exemple, Science l''a qualifié de  "jalon scientifique et de loin la plus grande synthèse de la recherche en biologie tropicale jamais réalisée".



Avance rapide de près de deux décennies

plus tard, et depuis la parution du livre de 2003, la quantité de nouvelles informations sur l''histoire naturelle de Madagascar a augmenté à un rythme qui dépasse les attentes les plus enthousiastes.

Les progrès réalisés sur les fronts de la recherche et de la conservation concernant Madagascar au cours de cette période ont facilement dépassé celles des 20 années précédant la parution de ce volume.



Avec tout cela en tête,

Steve, en tant qu''éditeur principal, rejoint par 17 éditeurs spécialisés, dont Achille Raselimanana, ont entièrement retravaillé le livre de 2003.

Il est important de

souligner que le nouveau projet n''est pas une simple révision de l''ouvrage de 2003,

mais d''un livre entièrement nouveau, sans qu''aucune contribution antérieure ne soit simplement

réimprimée.

Princeton University Press publiera le nouveau volume à la fin de 2022 ou au début de 2023.

2022 ou début 2023 sous le titre The New Natural History of Madagascar.

Fin janvier 2022, la plus grande partie du livre en est aux premières

épreuves de première page. Le manuscrit compte un peu moins de 7 000 pages, dont

553 figures et 243 tableaux, et compte 279 contributions de 539 collaborateurs,

dont environ un tiers sont malgaches et moins d''un quart du livre de 2003.



Le livre est publié en deux volumes distincts d''environ 1250

pages chacun. Princeton University Press a collaboré activement à ce projet et plusieurs centaines d''exemplaires de l''ouvrage seront envoyés à Madagascar pour être distribués aux différents collaborateurs gouvernementaux et non gouvernementaux

et partenaires de l''Association Vahatra', '2023-01-01', 3, 'nnhm.webp', NULL, 'In 2003, Steve Goodman and Jonathan P. Benstead (University of Georgia)

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

and partners of Association Vahatra', 'En 2003, Steve Goodman et Jonathan P. Benstead (Université de Géorgie)

ont publié un gros volume (+1700 pages) intitulé The Natural History

de Madagascar (University of Chicago Press).



Steve était le premier éditeur

et le principal contributeur à ce volume, qui a été largement salué - par exemple, Science l''a qualifié de  "jalon scientifique et de loin la plus grande synthèse de la recherche en biologie tropicale jamais réalisée".



Avance rapide de près de deux décennies

plus tard, et depuis la parution du livre de 2003, la quantité de nouvelles informations sur l''histoire naturelle de Madagascar a augmenté à un rythme qui dépasse les attentes les plus enthousiastes.

Les progrès réalisés sur les fronts de la recherche et de la conservation concernant Madagascar au cours de cette période ont facilement dépassé celles des 20 années précédant la parution de ce volume.



Avec tout cela en tête,

Steve, en tant qu''éditeur principal, rejoint par 17 éditeurs spécialisés, dont Achille Raselimanana, ont entièrement retravaillé le livre de 2003.

Il est important de

souligner que le nouveau projet n''est pas une simple révision de l''ouvrage de 2003,

mais d''un livre entièrement nouveau, sans qu''aucune contribution antérieure ne soit simplement

réimprimée.

Princeton University Press publiera le nouveau volume à la fin de 2022 ou au début de 2023.

2022 ou début 2023 sous le titre The New Natural History of Madagascar.

Fin janvier 2022, la plus grande partie du livre en est aux premières

épreuves de première page. Le manuscrit compte un peu moins de 7 000 pages, dont

553 figures et 243 tableaux, et compte 279 contributions de 539 collaborateurs,

dont environ un tiers sont malgaches et moins d''un quart du livre de 2003.



Le livre est publié en deux volumes distincts d''environ 1250

pages chacun. Princeton University Press a collaboré activement à ce projet et plusieurs centaines d''exemplaires de l''ouvrage seront envoyés à Madagascar pour être distribués aux différents collaborateurs gouvernementaux et non gouvernementaux

et partenaires de l''Association Vahatra');
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (40, '1990-2021 Publications', NULL, '2021-12-31', 3, '2021pubs.webp', NULL, NULL, NULL);
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (3, 'Volume 3: Biodiversity, exploration, and conservation of the natural habitats associated with the Ambatovy project', 'Le troisième volume de Malagasy Nature présente une série d''études entreprises dans les forêts d''Ambatovy, près de Moramanga. Ces études ont été réalisées dans le cadre d''une recherche sur la biodiversité des zones forestières partiellement couvertes, exposées à l''exploitation minière par le projet Ambatovy. Elles ont été réalisées pour soutenir le programme de conservation du projet.



Outre la description des programmes de conservation et de suivi écologique du projet minier, ce volume 3 présente les diverses informations biologiques et écologiques sur différents groupes, notamment les invertébrés, les vertébrés, ainsi que les plantes. Il compile également les résultats des inventaires d''une zone proche de la région d''Andasibe qui a été largement étudiée pendant des décennies, en mettant notamment l''accent sur les nouvelles découvertes sur la flore et la faune de ces 20 dernières années. Les nouvelles données présentées dans ce volume montrent l''importance biologique des zones étudiées. Elles constitueront des informations de base pour le suivi des changements écologiques et spécifiques de la biodiversité locale dans le temps et dans l''espace.', '2010-01-01', 1, 'mn3.webp', NULL, 'The third volume of Malagasy Nature presents a series of studies undertaken in the Ambatovy forests, near Moramanga. These studies were made within the framework of a research on the biodiversity partially covered forest zones, exposed to the mining by the Ambatovy Project. They were done to support the project conservation program.



Besides the description of the mining project conservation and ecological monitoring programmes, this Volume 3 shows the diverse biological and ecological information on various groups in particular, the invertebrates, the vertebrates, as well as the plants. It also compiles the results of the inventories of a zone near the region of Andasibe which was extensively studied for decades, in particular emphasizing the new discoveries on the flora and the fauna for these last 20 years. The new data presented in this volume show the biological importance of the studied zones. They will form basic information for the ecological and specific changes monitoring within the local biodiversity in time and in space.', 'Le troisième volume de Malagasy Nature présente une série d''études entreprises dans les forêts d''Ambatovy, près de Moramanga. Ces études ont été réalisées dans le cadre d''une recherche sur la biodiversité des zones forestières partiellement couvertes, exposées à l''exploitation minière par le projet Ambatovy. Elles ont été réalisées pour soutenir le programme de conservation du projet.



Outre la description des programmes de conservation et de suivi écologique du projet minier, ce volume 3 présente les diverses informations biologiques et écologiques sur différents groupes, notamment les invertébrés, les vertébrés, ainsi que les plantes. Il compile également les résultats des inventaires d''une zone proche de la région d''Andasibe qui a été largement étudiée pendant des décennies, en mettant notamment l''accent sur les nouvelles découvertes sur la flore et la faune de ces 20 dernières années. Les nouvelles données présentées dans ce volume montrent l''importance biologique des zones étudiées. Elles constitueront des informations de base pour le suivi des changements écologiques et spécifiques de la biodiversité locale dans le temps et dans l''espace.');
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (30, 'The Natural History of Madagascar', 'Séparée du continent africain depuis 160 millions d''années, Madagascar a développé une incroyable richesse de biodiversité, avec des milliers d''espèces que l''on ne trouve nulle part ailleurs sur terre. Par exemple, sur les 12 000 espèces végétales estimées, près de 10 000 sont uniques à Madagascar. Les animaux malgaches sont tout aussi spectaculaires, qu''il s''agisse des près de quarante espèces de lémuriens actuellement reconnues - un groupe de primates que l''on ne trouve qu''ici - ou des nombreuses espèces de minuscules caméléons nains. Avec une fréquence étonnante, les scientifiques découvrent une espèce jusqu''alors inconnue à Madagascar - et presque au même rythme, une autre zone d''habitat naturel est dégradée ou détruite, une combinaison qui a récemment conduit les organisations de conservation à désigner Madagascar comme l''une des priorités de conservation les plus importantes et les plus menacées de la planète.



L''Histoire naturelle de Madagascar offre la synthèse la plus complète et la plus récente des trésors biologiques inestimables de cette nation insulaire. Les contributions de près de trois cents experts de renommée mondiale couvrent l''histoire de l''exploration scientifique à Madagascar, sa géologie et ses sols, son climat, l''écologie forestière, l''écologie humaine, les écosystèmes marins et côtiers, les plantes, les invertébrés, les poissons, les amphibiens, les reptiles, les oiseaux et les mammifères. Des discussions détaillées sur les efforts de conservation à Madagascar mettent en lumière plusieurs programmes de réserve de parc réussis qui pourraient servir de modèles pour d''autres régions. Magnifiquement illustré tout au long de l''ouvrage, celui-ci comprend plus de cent illustrations en couleur, dont cinquante photos en couleur du photographe de nature Harald Schütz, ainsi que plus de trois cents photographies en noir et blanc et dessins au trait.



L''Histoire naturelle de Madagascar sera une référence inestimable pour tous ceux qui s''intéressent à l''environnement malgache, qu''il s''agisse de biologistes, de défenseurs de l''environnement, de décideurs politiques ou d''écotouristes.', '2003-01-01', 3, 'nhm.webp', NULL, ' Separated from the mainland of Africa for 160 million years, Madagascar has evolved an incredible wealth of biodiversity, with thousands of species that can be found nowhere else on earth. For instance, of its estimated 12,000 plant species, nearly 10,000 are unique to Madagascar. Malagasy animals are just as spectacular, from its almost forty currently recognized species of lemurs―a primate group found only here―to the numerous species of tiny dwarf chameleons. With astounding frequency scientists discover a previously unknown species in Madagascar―and at almost the same rate another natural area of habitat is degraded or destroyed, a combination that recently led conservation organizations to name Madagascar one of the most important and threatened conservation priorities on the planet.



The Natural History of Madagascar provides the most comprehensive, up-to-date synthesis available of this island nation''s priceless biological treasures. Contributions by nearly three hundred world-renowned experts cover the history of scientific exploration in Madagascar, its geology and soils, climate, forest ecology, human ecology, marine and coastal ecosystems, plants, invertebrates, fishes, amphibians, reptiles, birds, and mammals. Detailed discussions of conservation efforts in Madagascar highlight several successful park reserve programs that could serve as models for other areas. Beautifully illustrated throughout, the book includes over one hundred color illustrations, with fifty color photos by nature photographer Harald Schütz, as well as more than three hundred black-and-white photographs and line drawings.



The Natural History of Madagascar will be the invaluable reference for anyone interested in the Malagasy environment, from biologists and conservationists to policymakers and ecotourists. ', 'Séparée du continent africain depuis 160 millions d''années, Madagascar a développé une incroyable richesse de biodiversité, avec des milliers d''espèces que l''on ne trouve nulle part ailleurs sur terre. Par exemple, sur les 12 000 espèces végétales estimées, près de 10 000 sont uniques à Madagascar. Les animaux malgaches sont tout aussi spectaculaires, qu''il s''agisse des près de quarante espèces de lémuriens actuellement reconnues - un groupe de primates que l''on ne trouve qu''ici - ou des nombreuses espèces de minuscules caméléons nains. Avec une fréquence étonnante, les scientifiques découvrent une espèce jusqu''alors inconnue à Madagascar - et presque au même rythme, une autre zone d''habitat naturel est dégradée ou détruite, une combinaison qui a récemment conduit les organisations de conservation à désigner Madagascar comme l''une des priorités de conservation les plus importantes et les plus menacées de la planète.



L''Histoire naturelle de Madagascar offre la synthèse la plus complète et la plus récente des trésors biologiques inestimables de cette nation insulaire. Les contributions de près de trois cents experts de renommée mondiale couvrent l''histoire de l''exploration scientifique à Madagascar, sa géologie et ses sols, son climat, l''écologie forestière, l''écologie humaine, les écosystèmes marins et côtiers, les plantes, les invertébrés, les poissons, les amphibiens, les reptiles, les oiseaux et les mammifères. Des discussions détaillées sur les efforts de conservation à Madagascar mettent en lumière plusieurs programmes de réserve de parc réussis qui pourraient servir de modèles pour d''autres régions. Magnifiquement illustré tout au long de l''ouvrage, celui-ci comprend plus de cent illustrations en couleur, dont cinquante photos en couleur du photographe de nature Harald Schütz, ainsi que plus de trois cents photographies en noir et blanc et dessins au trait.



L''Histoire naturelle de Madagascar sera une référence inestimable pour tous ceux qui s''intéressent à l''environnement malgache, qu''il s''agisse de biologistes, de défenseurs de l''environnement, de décideurs politiques ou d''écotouristes.');
INSERT INTO publication (id, title, description, date, idtype, imagefront, imageback, description_en, description_fr) VALUES (55, 'The protected areas of Lokombe, Ankarana, and Montagne d''Ambre in northern Madagascar', 'The three editors of this book were also the co-editors of a three-volume book (2018), The terrestrial protected areas of Madagascar: Their history, description, and biota.', '2022-11-14', 2, 'guide_ecotouristique_1_cover.webp', 'guide_ecotouristique_1_back_cover.webp', 'The three editors of this book were also the co-editors of a three-volume book (2018), The terrestrial protected areas of Madagascar: Their history, description, and biota.', 'Les trois éditeurs de ce livre étaient également les coéditeurs d''un livre en trois volumes (2018). Les aires protégées terrestres de Madagascar: Leur histoire, description et biote.');


--
-- Data for Name: publicationauthor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (1, 2, 1);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (2, 4, 1);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (3, 1, 1);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (4, 3, 1);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (5, 28, 1);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (6, 29, 1);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (8, 2, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (9, 4, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (10, 3, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (11, 31, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (12, 32, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (13, 33, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (14, 34, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (15, 35, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (16, 36, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (17, 37, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (18, 38, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (19, 39, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (20, 40, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (21, 41, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (22, 42, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (23, 43, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (24, 44, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (25, 45, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (26, 46, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (27, 47, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (28, 48, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (29, 49, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (30, 50, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (33, 53, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (34, 54, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (35, 55, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (36, 56, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (37, 57, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (38, 58, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (39, 59, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (40, 60, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (41, 61, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (42, 20, 2);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (43, 4, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (44, 1, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (45, 2, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (46, 62, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (47, 63, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (48, 64, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (49, 65, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (50, 66, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (51, 67, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (52, 68, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (53, 69, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (54, 70, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (55, 71, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (56, 72, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (57, 73, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (58, 74, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (59, 75, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (60, 76, 3);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (61, 4, 29);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (62, 4, 30);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (63, 77, 30);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (69, 2, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (70, 3, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (71, 1, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (72, 4, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (74, 146, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (75, 147, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (76, 148, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (77, 149, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (78, 150, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (79, 151, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (80, 152, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (81, 153, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (82, 154, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (83, 155, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (84, 156, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (85, 157, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (86, 159, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (87, 129, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (88, 161, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (89, 123, 39);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (90, 24, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (91, 164, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (92, 165, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (93, 166, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (94, 167, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (95, 168, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (96, 169, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (97, 170, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (98, 171, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (99, 172, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (100, 173, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (101, 174, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (102, 175, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (103, 176, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (104, 177, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (105, 22, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (106, 178, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (107, 179, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (108, 180, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (109, 181, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (110, 182, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (111, 183, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (112, 184, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (113, 185, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (114, 186, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (115, 187, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (116, 188, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (117, 189, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (118, 190, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (119, 191, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (120, 192, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (121, 193, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (122, 194, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (123, 195, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (124, 196, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (125, 197, 15);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (126, 20, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (127, 198, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (128, 199, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (129, 200, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (130, 202, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (131, 203, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (132, 204, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (133, 205, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (134, 206, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (135, 207, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (136, 208, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (137, 209, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (138, 210, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (139, 162, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (140, 211, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (141, 212, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (142, 213, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (143, 214, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (144, 215, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (145, 216, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (146, 149, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (147, 81, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (148, 80, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (149, 84, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (150, 217, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (151, 1, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (152, 89, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (153, 218, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (154, 219, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (155, 220, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (156, 221, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (157, 222, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (158, 224, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (159, 225, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (160, 226, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (161, 227, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (162, 228, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (163, 229, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (164, 90, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (165, 151, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (166, 231, 14);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (167, 232, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (168, 233, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (169, 234, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (170, 235, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (171, 4, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (172, 236, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (173, 237, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (174, 129, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (175, 123, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (176, 238, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (177, 161, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (178, 126, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (179, 119, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (180, 240, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (181, 149, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (182, 150, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (183, 143, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (184, 151, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (185, 242, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (186, 243, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (187, 34, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (188, 244, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (189, 118, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (190, 245, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (191, 110, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (192, 246, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (193, 247, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (194, 3, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (195, 248, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (196, 249, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (197, 250, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (198, 251, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (199, 252, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (200, 253, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (201, 254, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (202, 256, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (203, 257, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (204, 258, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (205, 259, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (206, 260, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (207, 261, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (208, 32, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (209, 262, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (210, 263, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (211, 264, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (212, 265, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (213, 266, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (214, 42, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (215, 43, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (216, 267, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (217, 268, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (218, 269, 13);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (219, 147, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (220, 270, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (221, 349, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (222, 271, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (223, 205, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (224, 272, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (225, 273, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (226, 274, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (227, 11, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (228, 275, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (229, 38, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (230, 37, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (231, 277, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (232, 278, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (233, 279, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (234, 280, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (235, 281, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (236, 282, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (237, 283, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (238, 284, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (239, 104, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (240, 285, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (241, 3, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (242, 286, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (243, 4, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (244, 162, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (245, 149, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (246, 150, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (247, 32, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (248, 151, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (249, 115, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (250, 79, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (251, 109, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (252, 113, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (253, 126, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (254, 1, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (255, 287, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (256, 288, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (257, 289, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (258, 290, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (259, 2, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (260, 368, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (261, 292, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (262, 118, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (263, 34, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (264, 123, 12);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (265, 293, 10);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (266, 15, 10);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (267, 294, 10);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (268, 295, 10);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (269, 296, 10);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (270, 297, 10);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (271, 298, 10);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (272, 299, 10);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (273, 300, 10);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (274, 301, 10);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (275, 302, 10);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (276, 303, 10);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (277, 304, 10);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (278, 305, 10);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (279, 270, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (280, 147, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (281, 271, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (282, 205, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (283, 272, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (284, 306, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (285, 307, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (286, 308, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (287, 309, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (288, 285, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (289, 104, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (290, 4, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (291, 151, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (292, 310, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (293, 153, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (294, 152, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (295, 129, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (296, 123, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (297, 158, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (298, 262, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (299, 118, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (300, 311, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (301, 312, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (302, 313, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (303, 126, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (304, 3, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (305, 314, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (306, 315, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (307, 212, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (308, 316, 9);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (309, 317, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (310, 318, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (311, 319, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (312, 320, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (313, 321, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (314, 322, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (315, 323, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (316, 324, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (317, 263, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (318, 325, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (319, 326, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (320, 123, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (321, 4, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (322, 209, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (323, 327, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (324, 149, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (325, 328, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (326, 329, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (327, 118, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (328, 330, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (329, 129, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (330, 331, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (331, 332, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (332, 333, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (333, 334, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (334, 212, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (335, 316, 8);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (336, 272, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (337, 4, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (338, 2, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (339, 335, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (340, 53, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (341, 336, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (342, 337, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (343, 338, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (344, 339, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (345, 340, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (346, 341, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (347, 342, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (348, 343, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (349, 344, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (350, 345, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (351, 346, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (352, 271, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (353, 348, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (354, 147, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (355, 205, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (356, 385, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (357, 64, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (358, 386, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (359, 349, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (360, 350, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (361, 351, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (362, 387, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (363, 352, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (364, 1, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (365, 122, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (366, 3, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (367, 133, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (368, 324, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (369, 353, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (370, 354, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (371, 355, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (372, 263, 7);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (373, 1, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (374, 2, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (375, 3, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (376, 31, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (377, 316, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (378, 330, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (379, 4, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (380, 356, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (381, 205, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (382, 357, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (383, 18, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (384, 358, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (385, 322, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (386, 359, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (387, 360, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (388, 206, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (389, 207, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (390, 293, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (391, 15, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (392, 296, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (393, 362, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (394, 363, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (395, 364, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (396, 365, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (397, 366, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (398, 123, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (399, 158, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (400, 367, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (401, 151, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (402, 368, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (403, 149, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (404, 327, 6);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (405, 22, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (406, 225, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (407, 357, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (408, 205, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (409, 18, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (410, 356, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (411, 207, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (412, 369, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (413, 206, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (414, 370, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (415, 371, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (416, 93, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (417, 89, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (418, 126, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (419, 106, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (420, 4, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (421, 133, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (422, 3, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (423, 118, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (424, 123, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (425, 31, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (426, 316, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (427, 388, 5);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (428, 181, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (429, 373, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (430, 189, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (431, 184, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (432, 165, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (433, 374, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (434, 375, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (435, 376, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (436, 377, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (437, 378, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (438, 379, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (439, 380, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (440, 381, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (441, 382, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (442, 383, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (443, 384, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (444, 1, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (445, 18, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (446, 20, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (447, 4, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (448, 225, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (449, 389, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (450, 149, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (451, 121, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (452, 117, 4);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (455, 4, 55);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (459, 2, 55);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (460, 397, 55);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (461, 399, 24);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (462, 398, 24);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (463, 400, 23);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (464, 351, 23);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (465, 91, 22);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (466, 90, 22);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (467, 229, 22);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (468, 84, 22);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (469, 80, 22);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (470, 1, 22);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (471, 91, 21);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (472, 229, 21);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (473, 1, 21);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (474, 402, 20);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (475, 4, 20);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (476, 4, 19);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (477, 3, 17);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (478, 4, 17);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (479, 2, 18);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (480, 4, 18);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (481, 4, 16);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (482, 4, 28);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (483, 2, 28);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (484, 397, 28);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (485, 4, 27);
INSERT INTO publicationauthor (id, idperson, idpublication) VALUES (486, 2, 27);


--
-- Data for Name: publicationdetail; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (1, 'Préface', 'volume1/mn01_preface.pdf', 1);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (2, 'Introduction', 'volume1/mn01_01.pdf', 1);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (3, 'Exploration et connaissance biologique des différents sites inventoriés', 'volume1/mn01_02.pdf', 1);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (4, 'Herpétofaune des forêts sèches malgaches', 'volume1/mn01_03.pdf', 1);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (5, 'L’avifaune des forêts sèches malgaches ', 'volume1/mn01_04.pdf', 1);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (6, 'Les petits mammifères non-volants des forêts sèches malgaches', 'volume1/mn01_05.pdf', 1);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (7, 'Les lémuriens des forêts sèches malgaches', 'volume1/mn01_06.pdf', 1);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (8, 'Pressions et menaces dans la région forestière sèche malgache', 'volume1/mn01_07.pdf', 1);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (9, 'Aspect de la conservation des forêts sèches de Madagascar', NULL, 1);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (10, 'La création des aires protégées dans le sud et sud ouest de Madagascar : approche et méthodologie', 'volume1/mn01_08.pdf', 1);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (11, 'Index', 'volume1/mn01_index.pdf', 1);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (12, 'Format for contribution', 'volume1/mn01_format.pdf', 1);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (13, 'Préface', 'volume2/mn02_00.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (14, 'A review of the impacts of anthropogenic habitat change on terrestrial biodiversity in Madagascar: Implications for the design and management of new protected areas', 'volume2/mn02_01.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (15, 'Vertébrés terrestres des fragments forestiers de la Montagne d’Ambatotsirongorongo, site dans le Système des Aires Protégées de Madagascar de la Région Anosy, Tolagnaro', 'volume2/mn02_02.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (16, 'Reptiles, amphibiens et gradient altitudinal dans la région de Daraina, extrême nord-est de Madagasca', 'volume2/mn02_03.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (17, 'A review of the endoparasites of the lemurs of Madagascar', 'volume2/mn02_04.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (18, 'Les populations d’oiseaux aquatiques en périphérie d’une ferme de crevetticulture (OSO Farming)', 'volume2/mn02_05.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (19, 'Etude ethnobotanique des ignames (Dioscorea sp.) dans la forêt Mikea et le couloir d’Antseva (sud-ouest de Madagascar)', 'volume2/mn02_06.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (20, 'Variations morphométrique et moléculaire chez Miniopterus majori (Chiroptera : Miniopteridae) de Madagascar', 'volume2/mn02_07.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (21, 'The species of Grosphus Simon (Scorpiones, Buthidae) distributed in the northern and eastern regions of Madagascar with the description of a new species', 'volume2/mn02_08.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (22, 'Frugivory and facilitation of seed germination by the Velvet Asity, Philepitta castanea (Muller, 1776), in the rainforest understory of Ranomafana National Park, Madagascar', 'volume2/mn02_notes_01.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (23, 'The diet of the endemic bat Myzopoda aurita (Myzopodidae) based on fecal analysis', 'volume2/mn02_notes_02.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (24, 'Notes on the diet of the Barn Owl (Aves: Tytonidae: Tyto alba) from Zohin’Andavaka, Beahitse, extreme southwestern Madagascar', 'volume2/mn02_notes_03.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (25, 'Urban avian population and possible heavy metal contamination at Parc Tsaratsoatra, Alarobia, Antananarivo, Madagascar', 'volume2/mn02_notes_04.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (26, 'New distributional record of Appert’s Tetraka (Xanthomixis apperti) from Salary Bay, Mikea Forest, Madagascar', 'volume2/mn02_notes_05.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (27, 'The Sooty Gull, Larus hemprichii (Aves: Laridae), on Nosy Ve: first records for Madagascar', 'volume2/mn02_notes_06.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (28, 'Index ', 'volume2/mn02_index.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (29, 'Notes aux contributeurs dans Malagasy Nature', 'volume2/mn02_contributeurs.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (30, 'Format for contributions to Malagasy Nature', 'volume2/mn02_contribution.pdf', 2);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (31, 'Préface', 'volume3/mn03_00.pdf', 3);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (32, 'Ambatovy project: Mining in a challenging biodiversity setting in Madagascar', 'volume3/mn03_01.pdf', 3);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (33, 'Biological research conducted in the general Andasibe region of Madagascar with emphasis on enumerating the local biotic diversity', 'volume3/mn03_02.pdf', 3);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (34, 'Introduction to the early 2009 biological inventories conducted by the Association Vahatra in the Ambatovy-Analamay region', 'volume3/mn03_03.pdf', 3);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (35, 'Floristic inventory of the Ambatovy-Analamay mine site and comparison to other sites in Madagascar', 'volume3/mn03_04.pdf', 3);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (36, 'Survey of leaf litter ant species and assessment of invasive ants in the mining sites at Ambatovy, Madagascar', 'volume3/mn03_05.pdf', 3);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (37, 'Watercourse ecological sensitivity classification as a management framework to ameliorate pipeline construction impacts associated with the Ambatovy project', 'volume3/mn03_06.pdf', 3);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (38, 'The amphibians and reptiles of the Ambatovy-Analamay region', 'volume3/mn03_07.pdf', 3);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (39, 'The birds of the Ambatovy-Analamay region', 'volume3/mn03_08.pdf', 3);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (40, 'The non-volant and non-primate mammals of the Ambatovy-Analamay forest ', 'volume3/mn03_09.pdf', 3);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (41, 'The lemurs of the Ambatovy-Analamay region', 'volume3/mn03_10.pdf', 3);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (42, 'The Ambatovy lemur population spatial monitoring program: Summary of primary objectives and methods', 'volume3/mn03_11.pdf', 3);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (43, 'Index', 'volume3/mn03_contributeurs.pdf', 3);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (44, 'Notes aux contributeurs dans Malagasy Nature', 'volume3/mn03_contribution.pdf', 3);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (45, 'Format for contributions to Malagasy Nature', 'volume3/mn03_index.pdf', 3);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (46, 'Rock matrix surrounding subfossil lemur skull yields diverse collection of mammalian subfossils: Implications for reconstructing Madagascar’s paleoenvironments', 'volume4/mn04_01.pdf', 4);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (47, 'Influences des pièges sur la réitération et la sexualité des utriculaires aquatiques : cas d’Utricularia gibba et U. stellaris (Lentibulariaceae)', 'volume4/mn04_02.pdf', 4);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (48, 'Estimation de la densité des populations d’une espèce menacée de tortue terrestre (Astrochelys radiata) dans le Parc National Tsimanampetsotsa au Sud de Madagascar', 'volume4/mn04_03.pdf', 4);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (49, 'Liste des noms vernaculaires en langue française des espèces de chauves - souris de Madagascar', 'volume4/mn04_04.pdf', 4);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (50, 'Distributions et caractéristiques des microhabitats de Microcebus griseorufus (Cheirogaleidae) dans le Parc National de Tsimanampetsotsa (Sud ouest de Madagascar)', 'volume4/mn04_05.pdf', 4);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (51, 'Madagascar Buzzard (Buteo brachypterus) nest in association with the colonial nesting Sakalava Weaver (Ploceus sakalava)', 'volume4/mn04_notes_01.pdf', 4);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (52, 'Petits mammifères (Afrosoricida et Rodentia) nouvellement recensés dans le Parc National d’Andohahela (parcelle 1), Madagascar', 'volume4/mn04_notes_02.pdf', 4);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (53, 'Espèces d’amphibiens et de reptiles nouvellement recensés dans le Parc National d’Andohahela, Madagascar', 'volume4/mn04_notes_03.pdf', 4);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (54, 'Index', 'volume4/mn04_index.pdf', 4);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (55, 'Notes aux contributeurs dans Malagasy Nature', 'volume4/mn04_contributeurs.pdf', 4);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (56, 'Format for contributions to Malagasy Nature', 'volume4/mn04_contribution.pdf', 4);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (57, 'Structure dentaire : Implication pour la paléoécologie des Traversodontidae (Eucynodontia) du Trias de Madagascar', 'volume5/mn05_01.pdf', 5);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (58, 'Phenology of different vegetation types in Tsimanampetsotsa National Park, southwestern Madagascar', 'volume5/mn05_02.pdf', 5);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (59, 'Analyse structurale des formations végétales du Parc National d’Andohahela, habitat de Microcebus spp. (Sud-est de Madagascar)', 'volume5/mn05_03.pdf', 5);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (60, 'Conservation status of some commercialized succulent species of Madagascar', 'volume5/mn05_04.pdf', 5);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (61, 'Diet of the Mascarene grass frog, Ptychadena mascareniensis, in Madagascar', 'volume5/mn05_05.pdf', 5);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (62, 'Un premier aperçu de la diversité herpétofaunique d’un bloc forestier isolé, la forêt sèche de Beanka, dans la partie Ouest de Madagascar', 'volume5/mn05_06.pdf', 5);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (63, 'Habitat préférentiel d’Uroplatus giganteus (Reptilia, Gekkonidae), dans le complexe de la Montagne d’Ambre, Nord de Madagascar', 'volume5/mn05_07.pdf', 5);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (64, 'A case of the sympatric occurrence of Microgale brevicaudata and M. grandidieri (Afrosoricida, Tenrecidae) in the Beanka Forest, Maintirano', 'volume5/mn05_08.pdf', 5);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (65, 'Inventaire de chauves-souris dans la concession forestière de Kirindy CNFEREF, Morondava, Madagascar', 'volume5/mn05_09.pdf', 5);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (66, 'Bats of the Beanka Forest, a limestone karstic zone near Maintirano, central western Madagascar', 'volume5/mn05_10.pdf', 5);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (67, 'Sakalava weaver (Ploceus sakalava) nesting association with raptors: An alternative hypothesis', 'volume5/mn05_notes01.pdf', 5);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (68, 'Des Molossidae dans un arbre gîte de la région de Menabe central : description et biologie', 'volume5/mn05_notes02.pdf', 5);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (69, 'Index ', 'volume5/mn05_index.pdf', 5);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (70, 'Notes aux contributeurs dans Malagasy Nature', 'volume5/mn05_contributeurs.pdf', 5);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (71, 'Format for contributions to Malagasy Nature', 'volume5/mn05_contribution.pdf', 5);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (72, 'Note to readers - Note aux lecteurs', 'volume6/mn06_00.pdf', 6);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (73, 'Un premier aperçu de la faune de vertébrés du bush épineux de Salary-Bekodoy, à l’ouest du Parc National de Mikea, Madagascar', 'volume6/mn06_01.pdf', 6);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (74, 'Phenology of different vegetation types in the dry forest of Andohahela National Park, southeastern Madagascar', 'volume6/mn06_02.pdf', 6);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (75, 'Three new Aloe species from Madagascar', 'volume6/mn06_03.pdf', 6);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (76, 'Etudes dendrométriques et dendrochronologiques de neuf espèces de Commiphora Jacq. (Burseraceae) dans les forêts sèches de l’Ouest de Madagascar', 'volume6/mn06_04.pdf', 6);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (77, 'Influence de la variabilité climatique sur la phénologie de la forêt de la Réserve Spéciale de Bezà Mahafaly', 'volume6/mn06_05.pdf', 6);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (78, 'Can differences in floristic composition explain variation in the abundance of two sympatric mouse lemur species (Microcebus) in the Ankarafantsika National Park, northwestern Madagascar?', 'volume6/mn06_06.pdf', 6);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (79, 'Bio-écologie des chauves-souris du Parc National de Tsimanampetsotsa. 1. Identification bioacoustique et habitat préférentiel', 'volume6/mn06_07.pdf', 6);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (80, 'Bio-écologie des chauves-souris du Parc National de Tsimanampetsotsa. 2. Variation interspécifique et saisonnière du régime alimentaire', 'volume6/mn06_08.pdf', 6);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (81, 'Sighting of a ring-tailed vontsira (Galidia elegans) in the gallery forest of Berenty Private Reserve, southeastern Madagascar', 'volume6/mn06_09.pdf', 6);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (82, 'Two records of albinism in Malagasy birds', 'volume6/mn06_10.pdf', 6);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (83, 'Format for contributions to Malagasy Nature', 'volume6/mn06_11.pdf', 6);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (84, 'Préface et remerciements/Preface and acknowledgements', 'volume7/mn07preface.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (85, 'La forêt de Beanka, Région Melaky, Ouest de Madagascar : introduction et présentation du milieu', 'volume7/mn07chapter01.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (86, 'Current conservation trends in the Beanka Reserve', 'volume7/mn07chapter02.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (87, 'Caves of the Beanka karst, Melaky Region, western Madagascar', 'volume7/mn07chapter03.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (88, 'Rapport sur une mission archéologique à Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter04.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (89, 'Cartographie de la couverture forestière du massif de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter05.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (90, 'Structure et composition floristique de la forêt sur faciès karstique de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter06.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (91, 'Inventaire des plantes vasculaires de la région de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter07.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (92, 'The non-marine molluscs of Tsingy Beanka, Melaky Region, western Madagascar', 'volume7/mn07chapter08.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (93, 'Diversity of ants in burned and unburned grassland, and dry deciduous forest in the Beanka Reserve, Melaky Region, western Madagascar', 'volume7/mn07chapter09.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (94, 'Distribution et diversité des communautés terrestres et fouisseuses de vertébrés et d’invertébrés dans un écotone savane-forêt sèche de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter10.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (95, 'Faune herpétologique de la forêt de Beanka, Région Melaky : richesse biologique, intérêt biogéographique et importance dans la conservation de la biodiversité malgache', 'volume7/mn07chapter11.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (96, 'Premier aperçu de la diversité des oiseaux de la forêt sèche sur tsingy de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter12.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (97, 'Aperçu sur l’écologie de Mentocrex beankaensis (Aves, Rallidae) de la forêt sèche de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter13.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (98, 'Diversité des petits mammifères sur une formation de tsingy : cas de la forêt de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter14.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (99, 'Lemurs of the Beanka Forest, Melaky Region, western Madagascar', 'volume7/mn07chapter15.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (100, 'The importance of field inventories and associated studies to understand biodiversity patterns: The case of the Beanka Forest, Melaky Region, western Madagascar', 'volume7/mn07chapter16.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (101, 'Index', 'volume7/mn07index.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (102, 'Notes aux contributeurs/Format for contributions', 'volume7/mn07contributeurs.pdf', 7);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (103, 'Paleoecological analysis of elephant bird (Aepyornithidae) remains from the Late Pleistocene and Holocene formations of southern Madagascar', 'volume8/mn08_chapter01.pdf', 8);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (104, 'Endemic non-bambusoid genera of grasses (Poaceae) in Madagascar: Review of current knowledge', 'volume8/mn08_chapter02.pdf', 8);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (105, 'Investigating behavior and ecology of Aphaenogaster swammerdami (Formicidae) in selectively logged forest: 20 years later – a happy ant?', 'volume8/mn08_chapter03.pdf', 8);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (106, 'First record of Corethrellidae (Diptera), frog-biting midges, in Madagascar', 'volume8/mn08_chapter04.pdf', 8);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (107, 'The species composition and distribution of hematophagous insects collected by light-traps in and near cave systems of Madagascar', 'volume8/mn08_chapter05.pdf', 8);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (108, 'The dietary habits of Barn Owls (Tyto alba) in the spiny bush of southwestern Madagascar', 'volume8/mn08_chapter06.pdf', 8);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (109, 'Duchemin’s ‘Linnet’: Was there a second species of native fody Foudia sp. in the Granitic Seychelles? – with additional evidence for the mid-19th century introduction of F. madagascariensis', 'volume8/mn08_chapter07.pdf', 8);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (110, 'Vocalisations de Pipistrellus spp. sensu lato de Madagascar : Expérience sur l’effet de confinement', 'volume8/mn08_chapter08.pdf', 8);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (111, 'The bats of the Kianjavato-Vatovavy region, lowland eastern central Madagascar', 'volume8/mn08_chapter09.pdf', 8);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (112, 'An albino molossid bat from the southwestern Indian Ocean region', 'volume8/mn08_note01.pdf', 8);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (113, 'A record of vertebrate carnivory by the Crested Drongo (Dicrurus forficatus)', 'volume8/mn08_note02.pdf', 8);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (114, 'Format for contributions to Malagasy Nature', 'volume8/mn08_formatforcontributions.pdf', 8);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (115, 'Dynamique post-culturale de la végétation dans la presqu’île d’Ampasindava, Domaine du Sambirano, Nord-ouest de Madagascar', 'volume9/mn09_00.pdf', 9);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (116, 'Biodiversité de l’entomofaune des rizières de la région de Lac Alaotra (Madagascar)', 'volume9/mn09_01.pdf', 9);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (117, 'Puces (Insecta : Siphonaptera) d’Ambohitantely, Madagascar : Spécificité et phénologie', 'volume9/mn09_02.pdf', 9);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (118, 'Suivi de la communauté aviaire aquatique dans la Nouvelle Aire Protégée Mandrozo, Ouest de Madagascar', 'volume9/mn09_03.pdf', 9);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (119, 'Préférence alimentaire des chauves-souris de Kianjavato, région de Vatovavy-Fitovinany, Madagascar', 'volume9/mn09_04.pdf', 9);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (120, 'Comportement alimentaire des communautés de chauves-souris animalivores de Kirindy (CNFEREF) et d’Antsahabe, Madagascar : répartition, partage et disponibilité de niche alimentaire', 'volume9/mn09_05.pdf', 9);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (121, 'The importance of water bodies for insectivorous bats in a Malagasy dry deciduous forest: A case example from Kirindy (CNFEREF)', 'volume9/mn09_06.pdf', 9);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (122, 'Terrestrial “forest-dwelling” endemic small mammals captured outside of natural habitats in the Moramanga District, central eastern Madagascar', 'volume9/mn09_07.pdf', 9);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (123, 'Remains of an aye-aye (Daubentonia madagascariensis) at the edge of the Parc National d’Ankarana, Région Diana', 'volume9/mn09_08.pdf', 9);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (124, 'Documented occurrence of Taphozous mauritianus (E. Geoffroy, 1818) in Mayotte (Comoros Archipelago)', 'volume9/mn09_09.pdf', 9);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (125, 'Third record of pied avocet (Recurvirostra avosetta) for Madagascar', 'volume9/mn09_10.pdf', 9);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (126, 'Format for contributions to Malagasy Nature', 'volume9/mn09_11.pdf', 9);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (127, 'Notes aux contributeurs dans Malagasy Nature', 'volume9/mn09_12.pdf', 9);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (128, 'Préface et remerciements', 'volume10/mn10_00.pdf', 10);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (129, 'Variabilité et changement du climat à Bezà Mahafaly', 'volume10/mn10_01.pdf', 10);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (130, 'Dynamique de la couverture forestière dans la Réserve Spéciale de Bezà Mahafaly et sesenvirons', 'volume10/mn10_02.pdf', 10);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (131, 'Mammalian biodiversity at Bezà Mahafaly: An update', 'volume10/mn10_03.pdf', 10);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (132, 'Diurnal lemurs at Bezà Mahafaly: Resilience and risk', 'volume10/mn10_04.pdf', 10);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (133, 'Dynamique de l’herpétofaune de Bezà Mahafaly', 'volume10/mn10_05.pdf', 10);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (134, 'Suivi de l’avifaune de Bezà Mahafaly', 'volume10/mn10_06.pdf', 10);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (135, 'Dynamiques socio-économiques et utilisation des ressources naturelles dans la Réserve Spéciale de Bezà Mahafaly et ses environs', 'volume10/mn10_07.pdf', 10);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (136, 'Gouvernance de la Réserve Spéciale de Bezà Mahafaly', 'volume10/mn10_08.pdf', 10);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (137, 'Epilogue : Progrès et perspectives', 'volume10/mn10_09.pdf', 10);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (138, 'Notes aux contributeurs dans Malagasy Nature', 'volume10/mn10_10.pdf', 10);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (139, 'Format for contributions to Malagasy Nature', 'volume10/mn10_11.pdf', 10);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (140, 'Results of a biological inventory of the Nosy Ankao island group, Parc National de Loky-Manambato, northeastern Madagascar', 'volume11/mn11.pdf', 11);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (141, 'Notes aux contributeurs dans Malagasy Nature', 'volume10/mn10_10.pdf', 11);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (142, 'Format for contributions to Malagasy Nature', 'volume10/mn10_11.pdf', 11);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (143, 'Les unités paysagères dela péninsule d’Ampasindava (Nord-ouest de Madagascar), un terroir sous haute pression de déforestation', 'volume12/mn12_00.pdf', 12);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (144, 'Influence des caractéristiques forestières et des perturbations anthropogéniques sur la distribution des lémuriens de la Forêt Classée d’Ankadivory (Tsinjoarivo-Ambatolampy)', 'volume12/mn12_01.pdf', 12);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (145, 'Updated extinction risk assessments of Madagascar’s freshwater decapod crustaceans reveal fewer threatened species but more Data Deficient species', 'volume12/mn12_02.pdf', 12);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (146, 'Sex-ratio chez les puces (Insecta : Siphonaptera) d’Ambohitantely, Hautes Terres Centrales de Madagascar', 'volume12/mn12_03.pdf', 12);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (147, 'Découverte de la construction du nid de l’aigle serpentaire de Madagascar (Eutriorchis astur) dans l’Aire Protégée de Bemanevika, Nord-ouest de Madagascar', 'volume12/mn12_04.pdf', 12);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (148, 'Les tiques dures (Acari : Ixodidae) ectoparasites de micromammifères non-volants dans la forêt d’Ambohitantely, Madagascar', 'volume12/mn12_05.pdf', 12);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (149, 'Survie et variation temporelle de la taille de la population de Rousettus madagascariensis (Chiroptera : Pteropodidae) de la Grotte des Chauves-souris d’Ankarana, Nord de Madagascar', 'volume12/mn12_06.pdf', 12);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (200, 'Tome I: Introduction', 'PA book_t1.pdf', 28);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (150, 'Diversité et écologie des petits mammifères dans les habitats forestiers et anthropiques du District de Moramanga, Centre-est de Madagascar', 'volume12/mn12_07.pdf', 12);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (151, 'The distribution and ecology of invasive alien vertebrate species in the greater Toamasina region, central eastern Madagascar', 'volume12/mn12_08.pdf', 12);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (152, 'Nest of the Malagasy Pond Heron Ardeola idae in northern Madagascar', 'volume12/mn12_09.pdf', 12);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (153, 'Occurrence of Taphozous mauritianus (Emballonuridae) in Maintirano, western Madagascar', 'volume12/mn12_10.pdf', 12);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (154, 'Format for contributions to Malagasy Nature', 'volume12/mn12_11.pdf', 12);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (155, 'Notes aux contributeurs dans Malagasy Nature', 'volume12/mn12_12.pdf', 12);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (156, 'Morphologie pollinique de la flore de la Réserve Spéciale d’Ankarana, Madagascar', 'volume13/mn13_00.pdf', 13);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (157, 'Morphométrie des fruits et des graines de Ficus (Moraceae) de la forêt sèche de la Réserve Spéciale d’Ankarana, Madagascar', 'volume13/mn13_01.pdf', 13);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (158, 'Euphorbia pseudodidiereoides, une nouvelle euphorbe épineuse du Centre-sud de Madagascar', 'volume13/mn13_02.pdf', 13);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (159, 'A review of Trypanosoma species known from Malagasy vertebrates', 'volume13/mn13_03.pdf', 13);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (160, 'Revue des stratégies nationales sur la biosécurité et perspectives sur la gestion des espèces exotiques envahissantes à Madagascar', 'volume13/mn13_04.pdf', 13);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (161, 'Population structure, activity pattern, and microhabitat use of Phelsuma klemmeri at Mandrozo, Madagascar', 'volume13/mn13_05.pdf', 13);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (162, 'Succès de la reproduction et comportements de Polyboroide rayé (Polyboroides radiatus) dans l’Aire Protégée de Bemanevika, Nord-ouest de Madagascar', 'volume13/mn13_06.pdf', 13);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (163, 'Les chauves-souris du Paysage Harmonieux Protégé du Complexe Tsimembo Manambolomaty, Région Melaky, Madagascar : diversité et biogéographie', 'volume13/mn13_07.pdf', 13);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (164, 'Seasonal movements of insectivorous bat species in southwestern Madagascar', 'volume13/mn13_08.pdf', 13);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (165, 'Les rats dans le monde rural du Centre-est et du Centre-sud de Madagascar : dommages causés et systèmes de contrôle', 'volume13/mn13_09.pdf', 13);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (166, 'Feeding ecology of the bokiboky, Mungotictis decemlineata (family Eupleridae)', 'volume13/mn13_010.pdf', 13);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (167, 'Mise à jour de la distribution du crapaud commun d’Asie (Duttaphrynus melanostictus) dans le sud de Toamasina, Madagascar', 'volume13/mn13_011.pdf', 13);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (168, 'Le bananier aquatique, Typhonodorum madagascariense (famille des Araceae) dans la commune rurale d’Ankililoaka, Sud-ouest de Madagascar', 'volume13/mn13_012.pdf', 13);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (169, 'Absence of Trypanosoma infection among Hoplobatrachus tigerinus (Amphibia: Dicroglossidae) from Boeny, western Madagascar', 'volume13/mn13_013.pdf', 13);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (170, 'Format for contributions to Malagasy Nature', 'volume13/mn13_014.pdf', 13);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (171, 'Notes aux contributeurs dans Malagasy Nature', 'volume13/mn13_015.pdf', 13);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (172, 'Tribute to Martin Edwin Nicoll (1954-2020): Forty years (1980-2020) of a British scientist dedicated to the conservation of Malagasy biodiversity', 'volume14/mn14_00.pdf', 14);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (173, 'Effet de l’exploitation minière sur les facteurs productifs comme l’agriculture et la production de charbon de bois et la dynamique de déforestation dans le Sud-ouest de Madagascar', 'volume14/mn14_01.pdf', 14);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (174, 'Etude dendrométrique et dendrochronologique de trois espèces de Cedrelopsis Baillon, (Rutaceae) dans les forêts sèches de l’Ouest de Madagascar', 'volume14/mn14_02.pdf', 14);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (175, 'Resting site choice depends on age in Opisthacanthus madagascariensis (Scorpiones: Hormuridae) in dry deciduous forest, western Madagascar', 'volume14/mn14_03.pdf', 14);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (176, 'A rapid avifaunal survey of the Mahimborondro Protected Area, northern Madagascar', 'volume14/mn14_04.pdf', 14);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (177, 'Field body temperatures in the rainforest frog Mantidactylus (Brygoomantis) bellyi from northern Madagascar: Variance and predictors', 'volume14/mn14_05.pdf', 14);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (178, 'Population dynamics of Lemur catta at selected sleeping sites of Tsimanampesotse National Park', 'volume14/mn14_06.pdf', 14);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (179, 'Canopy chameleon (Furcifer willsii) consumption by common big-eyed snake (Mimophis mahfalensis) in Fivahona Forest, eastern Madagascar', 'volume14/mn14_07.pdf', 14);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (180, 'First sighting of the House Crow Corvus splendens on Nosy Be', 'volume14/mn14_08.pdf', 14);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (181, 'Format for contributions to Malagasy Nature', 'volume14/mn14_09.pdf', 14);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (182, 'Notes aux contributeurs dans Malagasy Nature', 'volume14/mn14_10.pdf', 14);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (183, 'Foreword', 'volume15/mn15_00.pdf', 15);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (184, 'Introduction: The way of the future — new paleosciences research led by Malagasy scientists', 'volume15/mn15_01.pdf', 15);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (185, 'Applying human niche construction theory to study settlement choice in southwest Madagascar, 16th-19th centuries CE', 'volume15/mn15_02.pdf', 15);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (186, 'Nontrivial responses of vegetation to compound disturbances: A case study of Malagasy grasslands', 'volume15/mn15_03.pdf', 15);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (187, 'Adaptation of subsistence strategies of the southwestern Malagasy in the face of climate change', 'volume15/mn15_04.pdf', 15);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (188, 'The Malagasy monsoon over the Holocene: A review from speleothem δ18Oc records ', 'volume15/mn15_05.pdf', 15);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (189, 'Paleoecological evidence for late Holocene aridification from the Taolambiby subfossil site of southwestern Madagascar', 'volume15/mn15_06.pdf', 15);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (190, 'Description of the subfossil crocodylians from a new Late Pleistocene subfossil site (Tsaramody, Sambaina Basin) in central Madagascar', 'volume15/mn15_07.pdf', 15);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (191, 'Comparing the paleoclimates of northwestern and southwestern Madagascar during the late Holocene: Implications for the role of climate in megafaunal extinction', 'volume15/mn15_08.pdf', 15);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (192, 'Subfossil birds from a submerged cave in southwestern Madagascar', 'volume15/mn15_09.pdf', 15);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (193, 'The growth and development of Pachylemur, a large-bodied Lemuridae', 'volume15/mn15_10.pdf', 15);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (194, 'The stories people tell, and how they can contribute to our understanding of megafaunal decline and extinction in Madagascar', 'volume15/mn15_11.pdf', 15);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (195, 'Format for contributions to Malagasy Nature', 'volume15/mn15_12.pdf', 15);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (196, 'Notes aux contributeurs dans Malagasy Nature', 'volume15/mn15_13.pdf', 15);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (198, NULL, '2014_memoiresandthesis.pdf', 26);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (199, NULL, 'Atlas.pdf', 27);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (201, 'Tome II: Northern and Eastern Madagascar', 'PA book_t2.pdf', 28);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (202, 'Tome III: Western and Southern Madagascar - Synthesis', 'PA book_t3.pdf', 28);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (197, NULL, '2014_publicationeng.pdf', 25);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (225, 'Evaluation éco-biologique de la faune et de la flore de l’Aire Protégée d’Ambohitr’Antsingy (Montagne des Français), au Nord de Madagascar', 'MN16_Chapitre_01_Raherilalao.pdf', 39);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (226, 'Suivi de la population et sélection d’habitat du Héron crabier blanc Ardeola idae (Ardeidae) dans dix de ses zones de distribution à Madagascar', 'MN16_Chapitre_02_Pruvot.pdf', 39);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (227, 'Tendance de la population de Passer domesticus (famille des Ploceidae), une espèce d’oiseau envahissant, dans la ville de Toamasina, Madagascar', 'MN16_Chapitre_03_Raolihanitrasina.pdf', 39);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (228, 'Distribution spatiale de trois espèces d’oiseaux envahissants dans les villes portuaires de Madagascar', 'MN16_Chapitre_04_Raobson.pdf', 39);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (229, 'Etude du régime alimentaire du moineau domestique Passer domesticus (famille des Passeridae) dans la ville de Toamasina, Madagascar', 'MN16_Chapitre_05_Raolihanitrasina.pdf', 39);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (230, 'Régime alimentaire de Mops leucostigma (Chiroptera : Molossidae) dans la Station Forestière d’Ivoloina, Centre-est de Madagascar', 'MN16_Chapitre_06_Todilahy.pdf', 39);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (231, 'Trypanosoma infection in terrestrial small mammals from the Central Highlands of Madagascar', 'MN16_Chapitre_07_Rasoanoro.pdf', 39);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (232, 'New distribution record of the House Sparrow Passer domesticus in inland northwestern Madagascar', 'MN16_Note_01_Rene_de_Roland.pdf', 39);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (233, 'The first nest description of Eliurus majori (Rodentia: Nesomyidae), an endemic Malagasy rodent', 'MN16_Note_02_Rakotoarisoa.pdf', 39);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (234, 'Format for contributions to Malagasy Nature ', 'MN16_Format_fo_contributions.pdf', 39);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (235, 'Notes aux contributeurs dans Malagasy Nature ', 'MN16_Notes_aux_contributeurs.pdf', 39);
INSERT INTO publicationdetail (id, name, pdf, idpublication) VALUES (236, NULL, '2021_publicationeng.pdf', 40);


--
-- Data for Name: report; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO report (id, title, pdf, year) VALUES (2, '2013 Annual Report', 'annual_report_for_2013_final_lr.pdf', 2013);
INSERT INTO report (id, title, pdf, year) VALUES (3, '2014 Annual Report', 'annual_report_for_2014_fin_lr.pdf', 2014);
INSERT INTO report (id, title, pdf, year) VALUES (4, '2015 Annual Report', 'annual_report_for_2015_fin_lr.pdf', 2015);
INSERT INTO report (id, title, pdf, year) VALUES (5, '2016 Annual Report', 'annual_report_for_2016_fin_lr.pdf', 2016);
INSERT INTO report (id, title, pdf, year) VALUES (6, '2017 Annual Report', '2017_rapport_annuel_lr.pdf', 2017);
INSERT INTO report (id, title, pdf, year) VALUES (7, '2018 Annual Report', 'annual_report_for_2018_lr.pdf', 2018);
INSERT INTO report (id, title, pdf, year) VALUES (8, '2019 Annual Report', 'vahatra_annual_report_for_2019.pdf', 2019);
INSERT INTO report (id, title, pdf, year) VALUES (9, '2020 Annual Report', 'vahatra_annual_report_for_2020.pdf', 2020);
INSERT INTO report (id, title, pdf, year) VALUES (10, '2021 Annual Report', 'vahatra_annual_report_2021.pdf', 2021);
INSERT INTO report (id, title, pdf, year) VALUES (1, '2011 Annual Report', '2011_vahatra_annual_report_fin_lr.pdf', 2011);
INSERT INTO report (id, title, pdf, year) VALUES (11, '2012 Annual Report', 'annual_report_2012.pdf', 2012);

INSERT INTO typememberimage (id, image, idtypemember) VALUES (2, 'BEA_113.webp', 1);
INSERT INTO typememberimage (id, image, idtypemember) VALUES (3, 'cc1.webp', 1);
INSERT INTO typememberimage (id, image, idtypemember) VALUES (4, 'Amena_035.webp', 2);
INSERT INTO typememberimage (id, image, idtypemember) VALUES (5, 'Beman_037.webp', 3);
INSERT INTO typememberimage (id, image, idtypemember) VALUES (6, 'Grop_090.webp', 3);
INSERT INTO typememberimage (id, image, idtypemember) VALUES (7, 'DSC_0126.webp', 3);
INSERT INTO typememberimage (id, image, idtypemember) VALUES (8, 'Etudiants.webp', 3);
INSERT INTO typememberimage (id, image, idtypemember) VALUES (9, 'Groupe.webp', 4);
INSERT INTO typememberimage (id, image, idtypemember) VALUES (10, 'DSC_0587.webp', 4);