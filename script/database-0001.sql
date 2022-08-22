INSERT INTO typeMember(name,image, description) VALUES ('board of directors', null, 'In the context of providing clear and long-term advice for the development of new programs and the management of the association, Vahatra places considerable importance on the board of directors.');
INSERT INTO typeMember(name,image, description) VALUES ('permanent members', null, 'The current staff includes eleven individuals, the first four of which are amongst the five founding members of the association.');
INSERT INTO typeMember(name,image, description) VALUES ('students', null, 'Students enrolled within the Malagasy university system, particularly in the field of biology and environmental ecology, are the principal focus of the Vahatra program to help with their advancement and capacity building. We aim at having 12-15 students working with us at any given time. Once a student has finished their degree, the place is open for another incoming student.');


CREATE SEQUENCE seqmember START WITH 1 INCREMENT BY 1;


INSERT INTO person VALUES (1,'Raselimanana','Achille P.','Pr.');
INSERT INTO person VALUES (2,'Raherilalao','Marie Jeanne','Dr.');
INSERT INTO person VALUES (3,'Soarimalala','Voahangy','Dr.');
INSERT INTO person VALUES (4,'Goodman','Steven M.','Pr.');
INSERT INTO person VALUES (5,'Raharinirina','Sabrina','Ms.');
INSERT INTO person VALUES (6,'Ratsirahaingotiana','Sandra','Ms.');
INSERT INTO person VALUES (7,'Razafindravao','Rachel (Ledada)','Mr.');
INSERT INTO person VALUES (8,'Malaimbohitsy','Elisa','Mr.');
INSERT INTO person VALUES (9,'Avisoa','Mara','Mr.');
INSERT INTO person VALUES (10,'Tsitindria','François','Mr.');
INSERT INTO person VALUES (11,'Rakotondravony','Daniel','Pr.');
INSERT INTO person VALUES (12,'Ratsifandrihamanana','Nanie','Ms.');
INSERT INTO person VALUES (13,'Ratrimoarivony','Guy','General');
INSERT INTO person VALUES (14,'Andrianarivo','Chantal','Ms.');
INSERT INTO person VALUES (15,'Ratsirarson','Joelisoa','Pr.');
INSERT INTO person VALUES (16,'Rakotoary','Jean Chrysostome','Mr.');
INSERT INTO person VALUES (17,'Andriambololona','Raoelina','Pr.');
INSERT INTO person VALUES (18,'Ganzhorn','Jörg U.','Pr.');
INSERT INTO person VALUES (19,'Goodman','Paul','Mr.');
INSERT INTO person VALUES (20,'Langrand','Olivier','Mr.');
INSERT INTO person VALUES (21,'Polsky','Michael','Mr.');

INSERT INTO public.person (id, "name", username, title) VALUES(22, 'Ranivoharimanana', 'Lovasoa', 'Ms.');
INSERT INTO public.person (id, "name", username, title) VALUES(23, 'REBIOMA', 'Equipe', '');
INSERT INTO public.person (id, "name", username, title) VALUES(24, 'Ratsimbazafy', 'Jonah', 'Mr.');
INSERT INTO public.person (id, "name", username, title) VALUES(25, 'Chikhi', 'Lounès', 'Mr.');
INSERT INTO public.person (id, "name", username, title) VALUES(26, 'Rakotondratsimba', 'Mbola', 'Ms.');
INSERT INTO public.person (id, "name", username, title) VALUES(27, 'Douglas', 'Michael', 'Dr.');

INSERT INTO public.person (id, "name", username, title) VALUES(28, 'Ralison', 'J.', null);
INSERT INTO public.person (id, "name", username, title) VALUES(29, 'Wilmé', 'L.', null);
INSERT INTO public.person (id, "name", username, title) VALUES(30, 'Rakotomalala', 'D.', null);

INSERT INTO public.person (id, "name", username, title) VALUES(31, 'Gardner', 'Charlie J.', null);
INSERT INTO public.person (id, "name", username, title) VALUES(32, 'Andrianarimisa', 'Aristide', null);
INSERT INTO public.person (id, "name", username, title) VALUES(33, 'Andrianjakarivelo', 'Vonjy', null);
INSERT INTO public.person (id, "name", username, title) VALUES(34, 'Rakotomalala', 'Zafimahery', null);
INSERT INTO public.person (id, "name", username, title) VALUES(35, 'Anjeriniaina ', 'Mirana', null);
INSERT INTO public.person (id, "name", username, title) VALUES(36, 'Rakotondravony', 'Hery A.', null);
INSERT INTO public.person (id, "name", username, title) VALUES(37, 'Irwin', 'Mitchell T.', null);
INSERT INTO public.person (id, "name", username, title) VALUES(38, 'Raharison', 'Jean-Luc', null);
INSERT INTO public.person (id, "name", username, title) VALUES(39, 'Roux', 'Fabrice', null);
INSERT INTO public.person (id, "name", username, title) VALUES(40, 'Bejoma', 'Benitoto', null);
INSERT INTO public.person (id, "name", username, title) VALUES(41, 'Cheban', 'Saoly Alfred', null);
INSERT INTO public.person (id, "name", username, title) VALUES(42, 'Rejo-Fienena', 'Félicitée', null);
INSERT INTO public.person (id, "name", username, title) VALUES(43, 'Tostain', 'Serge', null);
INSERT INTO public.person (id, "name", username, title) VALUES(44, 'Maminirina', ' Claudette P.', null);
INSERT INTO public.person (id, "name", username, title) VALUES(45, 'Appleton', 'Belinda', null);
INSERT INTO public.person (id, "name", username, title) VALUES(46, 'Bradman', 'Helen M.', null);
INSERT INTO public.person (id, "name", username, title) VALUES(47, 'Christidis', 'Les', null);
INSERT INTO public.person (id, "name", username, title) VALUES(48, 'Lourenço', 'Wilson R.', null);
INSERT INTO public.person (id, "name", username, title) VALUES(49, 'Razafindratsita', 'Vololontiana', null);
INSERT INTO public.person (id, "name", username, title) VALUES(50, 'Zack', 'Steve', null);
INSERT INTO public.person (id, "name", username, title) VALUES(51, 'Ramasindrazana', 'Beza', null);
INSERT INTO public.person (id, "name", username, title) VALUES(52, 'Rajemison', 'Balisama', null);
INSERT INTO public.person (id, "name", username, title) VALUES(53, 'Griffiths', 'Owen', null);
INSERT INTO public.person (id, "name", username, title) VALUES(54, 'Barratt', 'Nicola', null);
INSERT INTO public.person (id, "name", username, title) VALUES(55, 'Lashaway', 'Caleb', null);
INSERT INTO public.person (id, "name", username, title) VALUES(56, 'Rai', 'Ashutosh', null);
INSERT INTO public.person (id, "name", username, title) VALUES(57, 'Molou', 'Irfane', null);
INSERT INTO public.person (id, "name", username, title) VALUES(58, 'Kartchner', 'Zachary', null);
INSERT INTO public.person (id, "name", username, title) VALUES(59, 'Holley', 'Aidan', null);
INSERT INTO public.person (id, "name", username, title) VALUES(60, 'Bechtolsheim', 'Matthias von', null);
INSERT INTO public.person (id, "name", username, title) VALUES(61, 'Renoul', 'Julien P.', null);

INSERT INTO public.person (id, "name", username, title) VALUES(62, 'Dickinson', 'Steven', null);
INSERT INTO public.person (id, "name", username, title) VALUES(63, 'Berner', 'Pierre O.', null);
INSERT INTO public.person (id, "name", username, title) VALUES(64, 'Phillipson', 'Peter B.', null);
INSERT INTO public.person (id, "name", username, title) VALUES(65, 'Lowry II', ' Porter P.', null);
INSERT INTO public.person (id, "name", username, title) VALUES(66, 'AndriamahMartin farivo', 'Lalao', null);
INSERT INTO public.person (id, "name", username, title) VALUES(67, 'Antilahimena', 'Patrice', null);
INSERT INTO public.person (id, "name", username, title) VALUES(68, 'Birkinshaw', 'Christopher', null);
INSERT INTO public.person (id, "name", username, title) VALUES(69, 'Rakotonirina', 'Jean Claude', null);
INSERT INTO public.person (id, "name", username, title) VALUES(70, 'Rall', 'Johannes L.', null);
INSERT INTO public.person (id, "name", username, title) VALUES(71, 'Andriamanamihaja', 'Hasina', null);
INSERT INTO public.person (id, "name", username, title) VALUES(72, 'Ravelomanana', 'Tsilavina', null);
INSERT INTO public.person (id, "name", username, title) VALUES(73, 'Raheriarisena', 'Martin', null);
INSERT INTO public.person (id, "name", username, title) VALUES(74, 'Ralison', 'José M.', null);
INSERT INTO public.person (id, "name", username, title) VALUES(75, 'Mass', 'Vanessa', null);
INSERT INTO public.person (id, "name", username, title) VALUES(76, 'Rakotondratsimba', 'Gilbert', null);

INSERT INTO public.person (id, "name", username, title) VALUES(77, 'Benstead', 'Jonathan P.', null);

-- permanent members
INSERT INTO member VALUES ('M1', 2, 'raselimananaachille@gmail.com','Founding member. His fields of interest include herpetology, including systematics, biogeography, ecology and biological evaluation as well as study of environmental impact. Responsible for courses on reptiles and amphibians biology for second year students as well as biogeography, ecological monitoring and ecomorphology for master level students.',null,1);
INSERT INTO member VALUES ('M2',2,'jraherilalao@gmail.com', 'Founding member. She has interests in ornithology including biology, ecology, systematics, biogeography, biological evaluation, and the study of environmental impact. Responsible for teaching of bird biology for second year students as well as evolutionary biology and biodiversity evaluation, especially terrestrial vertebrates for master level students.',null,2);
INSERT INTO member VALUES ('M3',2,'voahangysoarimalala@gmail.com','Founding member. Her research interests include mammals, especially small mammals and carnivores which includes systematics, biogeography, ecology, biological evaluation and environmental impact study. Responsible for teaching ecology and animal systematics for first and second year students; biodiversity conservation and valorisation for third year students.',null,3);
INSERT INTO member VALUES ('M4',2,'sgoodman@fieldmuseum.org',' Founding member. His fields of research interests include several domains such as mammals, bats and birds. He is particularly interested in biology, ecology, systematics, biogeography, paleoecology, etc.',null,4);
INSERT INTO member VALUES ('M5',2,'msraharinirina@gmail.com','Sabrina joined the association in October 2015.',null,5);
INSERT INTO member VALUES ('M6',2,null,' Ledada
started working with the ETP some 29 years ago and transferred to
Vahatra in October 2007. He has helped organize logistics for hundreds
of field missions to some of the remotest areas on Madagascar.', null,6);
INSERT INTO member VALUES ('M7',2,null,'She has worked with
Vahatra since May 2016.', null,7);
INSERT INTO member VALUES ('M8',2,null,null,null,8);
INSERT INTO member VALUES ('M9',2,null,null,null,9);
INSERT INTO member VALUES ('M10',2,null,null,null,10);

-- board of directors
INSERT INTO member VALUES ('M11',1,null,'He is actually retired',null,11);
INSERT INTO member VALUES ('M12',1,null,null,null,12);
INSERT INTO member VALUES ('M13',1,null,'He is actually retired',null,13);
INSERT INTO member VALUES ('M14',1,null,null,null,14);
INSERT INTO member VALUES ('M15',1,null,null,null,15);
INSERT INTO member VALUES ('M16',1,null,null,null,16);
INSERT INTO member VALUES ('M17',1,null,null,null,17);
INSERT INTO member VALUES ('M18',1,null,null,null,18);
INSERT INTO member VALUES ('M19',1,null,null,null,19);
INSERT INTO member VALUES ('M20',1,null,null,null,20);
INSERT INTO member VALUES ('M21',1,null,null,null,21);

-- students

-- post of all members
INSERT INTO POST VALUES ('P1','president');
INSERT INTO POST VALUES ('P2','professor');
INSERT INTO POST VALUES ('P3','scientific member');
INSERT INTO POST VALUES ('P4','ornithologist');
INSERT INTO POST VALUES ('P5','chef editor of Malagasy Nature');
INSERT INTO POST VALUES ('P6','scientific coordinator');
INSERT INTO POST VALUES ('P7','mammalogist');
INSERT INTO POST VALUES ('P9','head museum curator');
INSERT INTO POST VALUES ('P10','scientific advisor');
INSERT INTO POST VALUES ('P11','vice president');
INSERT INTO POST VALUES ('P12','co-editor of Malagasy Nature');
INSERT INTO POST VALUES ('P13','docteur honoris causa');
INSERT INTO POST VALUES ('P14','financial & administration manager');
INSERT INTO POST VALUES ('P15','logistic coordinator');
INSERT INTO POST VALUES ('P16','domestic help');
INSERT INTO POST VALUES ('P17','guardians');
INSERT INTO POST VALUES ('P18','gardeners');
INSERT INTO POST VALUES ('P19','country director');
INSERT INTO POST VALUES ('P20','général de corps d''armée');
INSERT INTO POST VALUES ('P21','Center for Diplomatic and Strategic studies');
INSERT INTO POST VALUES ('P22','former head of research and biodiversity');
INSERT INTO POST VALUES ('P23','technical advisor');
INSERT INTO POST VALUES ('P24','ex-vice president');
INSERT INTO POST VALUES ('P25','ex-general director');
INSERT INTO POST VALUES ('P26','principal');
INSERT INTO POST VALUES ('P27','executive director');
INSERT INTO POST VALUES ('P28','director');

INSERT INTO department VALUES ('D1','Department of Animal Biology');
INSERT INTO department VALUES ('D2','Department of Water and Forests');
INSERT INTO department VALUES ('D3','Tierökologie und Naturschutz');

INSERT INTO institution VALUES ('I1','Association Vahatra');
INSERT INTO institution VALUES ('I2','University of Antananarivo');
INSERT INTO institution VALUES ('I3','University of Fianarantsoa');
INSERT INTO institution VALUES ('I4','University of Mahajanga');
INSERT INTO institution VALUES ('I5','WWF Madagascar');
INSERT INTO institution VALUES ('I6','Strategy Seminar');
INSERT INTO institution VALUES ('I7','Madagascar National Parks');
INSERT INTO institution VALUES ('I8','Indian Ocean Commission');
INSERT INTO institution VALUES ('I9','Ecole Supérieure des Sciences Agronomiques');
INSERT INTO institution VALUES ('I10','Office National pour l''Environnement (ONE)');
INSERT INTO institution VALUES ('I11','Institut National des Sciences et Techniques Nucléaires');
INSERT INTO institution VALUES ('I12','University of Hamburg');
INSERT INTO institution VALUES ('I13','Kingfisher Group');
INSERT INTO institution VALUES ('I14','Critical Ecosystem Partnership Fund (CEPF)');
INSERT INTO institution VALUES ('I15','Invenergy');

INSERT INTO institution VALUES ('I16','University of Toliara');
INSERT INTO institution VALUES ('I17','University of Kwa-Zulu Natal, South Africa');
INSERT INTO institution VALUES ('I18','University of Venda, South Africa ');
INSERT INTO institution VALUES ('I19','CRVOI La Réunion');

INSERT INTO public.institution
(id, "name")
VALUES('I20', 'Madagascar Fauna and Flora Group ');

INSERT INTO public.institution
(id, "name")
VALUES('I21', 'Duke University');

INSERT INTO public.institution
(id, "name")
VALUES('I22', 'National Institute of Health (NIH)');

INSERT INTO public.institution
(id, "name")
VALUES('I23', 'National Science Foundation (NSF)');

INSERT INTO public.institution
(id, "name")
VALUES('I24', 'Korea International Cooperation Agency (KOICA)');

INSERT INTO public.institution
(id, "name")
VALUES('I25', 'United Nations Educational, Scientific and Cultural Organization (UNESCO)');

INSERT INTO public.institution
(id, "name")
VALUES('I26', 'Fonds Européen de Développement Régional (FEDER)');

INSERT INTO public.institution
(id, "name")
VALUES('I27', 'University of La Reunion');

INSERT INTO public.institution
(id, "name")
VALUES('I28', 'Processus Infectieux en Milieu Insulaire Tropical (PIMIT)');

INSERT INTO public.institution
(id, "name")
VALUES('I29', 'Global Challenges Research Fund (GCRF)');

INSERT INTO public.institution
(id, "name")
VALUES('I30', 'United Kingdom Research and Innovation (UKRI)');


--  member, post,institution,department
INSERT INTO memberPostInst VALUES ('M1','P1','I1',null);
INSERT INTO memberPostInst VALUES ('M1','P2','I2','D1');
INSERT INTO memberPostInst VALUES ('M2','P3','I1',null);
INSERT INTO memberPostInst VALUES ('M2','P4','I1',null);
INSERT INTO memberPostInst VALUES ('M2','P5','I1',null);
INSERT INTO memberPostInst VALUES ('M2','P2','I2','D1');
INSERT INTO memberPostInst VALUES ('M3','P3','I1',null);
INSERT INTO memberPostInst VALUES ('M3','P6','I1',null);
INSERT INTO memberPostInst VALUES ('M3','P7','I1',null);
INSERT INTO memberPostInst VALUES ('M3','P9','I2','D1');
INSERT INTO memberPostInst VALUES ('M3','P2','I3','D1');
INSERT INTO memberPostInst VALUES ('M4','P10','I1',null);
INSERT INTO memberPostInst VALUES ('M4','P11','I1',null);
INSERT INTO memberPostInst VALUES ('M4','P12','I1',null);
INSERT INTO memberPostInst VALUES ('M4','P13','I2','D1');
INSERT INTO memberPostInst VALUES ('M4','P2','I2','D1');
INSERT INTO memberPostInst VALUES ('M4','P2','I4','D1');
INSERT INTO memberPostInst VALUES ('M5','P14','I1',null);
INSERT INTO memberPostInst VALUES ('M6','P15','I1',null);
INSERT INTO memberPostInst VALUES ('M7','P16','I1',null);
INSERT INTO memberPostInst VALUES ('M8','P17','I1',null);
INSERT INTO memberPostInst VALUES ('M8','P18','I1',null);
INSERT INTO memberPostInst VALUES ('M9','P17','I1',null);
INSERT INTO memberPostInst VALUES ('M9','P18','I1',null);
INSERT INTO memberPostInst VALUES ('M10','P17','I1',null);
INSERT INTO memberPostInst VALUES ('M10','P18','I1',null);


INSERT INTO memberPostInst VALUES ('M11','P2','I2','D1');
INSERT INTO memberPostInst VALUES ('M12','P19','I5',null);
INSERT INTO memberPostInst VALUES ('M13','P20',null,null);
INSERT INTO memberPostInst VALUES ('M13','P21',null,null);
INSERT INTO memberPostInst VALUES ('M13','P28','I6',null);
INSERT INTO memberPostInst VALUES ('M14','P22','I7',null);
INSERT INTO memberPostInst VALUES ('M14','P23','I8',null);
INSERT INTO memberPostInst VALUES ('M15','P2','I9','D2');
INSERT INTO memberPostInst VALUES ('M15','P24','I2',null);
INSERT INTO memberPostInst VALUES ('M16','P25','I10',null);
INSERT INTO memberPostInst VALUES ('M17','P25','I11',null);
INSERT INTO memberPostInst VALUES ('M18','P2','I12','D3');
INSERT INTO memberPostInst VALUES ('M19','P26','I13',null);
INSERT INTO memberPostInst VALUES ('M20','P27','I14',null);
INSERT INTO memberPostInst VALUES ('M21','P1','I15',null);

INSERT INTO messageOfYear(year,description,idMember) VALUES (2021,'After two successive years of anguish in the shadow of the Covid-19 pandemic, living and working in greater serenity during the year 2021 was everyone’s wish and with the hope of catching up with much that could not be done in 2020.
Unfortunately, the situation has only worsened in 2021, despite the precautions taken at a previously non-imaginable scale to prevent the spread of the disease and the associated vaccination efforts. The impacts of Covid-19 are multiple not only in the domains of health and work, but also redirecting the life and dynamics of society in general, as well as local and international communities. With the worry of being contaminated, fear and panic reign everywhere and people are afraid of being in contact with their friends and even families. Superimposed on this is the many individuals that fell sick and worse those that succumbed to the virus. It is a total psychosis. Life has slowed down and hovers in limitless anxiety, without anyone being able to say how and when it will end. Here in Madagascar associated with the lack of clear dissemination of information, the situation is largely unknown concerning the prevalence of the disease in Malagasy society and the number of deaths; at the time of writing this message only about 3% of the population of Madagascar has being vaccinated.
However, we realize that this is not a time for the lighthearted, that is to say to give up hope. Learning to live with the prevailing situation is the best strategy to cross this difficult period. It is in this spirit of harmonizing the way of life, even given the existing conditions, that the Association Vahatra has been able to advance with some level of serenity through the year 2021. The members and students affiliated with the association have been 100% fully vaccinated, some already with boosters, and taking the needed precautions in social contexts to protect better one other and with the intent to complete what was planned to be accomplish in 2021.
Thus, despite the difficulties and uncertain conditions in which we had to work, the association was able to make numerous important achievements. (Please see different portions of this annual report for further details.) These include, for example, large-scale biological inventories, as part of the BIOCOM project in collaboration with UNESCO with funding from The Korea International Cooperation Agency (KOICA) that were carried out in the protected areas of Montagne des Français in March and in the Marojejy in October and November. In addition, this year we were able to launch an ambitious new project with funding from Save the Rainforest Sweden that aims to support the efforts to conserve the Ambohitantely protected area via three different axes: research on aquatic insects; ecological restoration, including a the large-scale installation of firebreaks surrounding the remaining forests; and the establishment of a multifunctional biological station. The Ambohitantely project illustrates the association’s desire to have a broad approach to its interventions directly needed to the management and protection of biodiversity, in addition to what we have been doing for many years concerning research, dissemination of information on the island’s biodiversity, and human capacity building. Taken together these different aspects help to advance the national perspective on the importance of science and train a whole range of young Malagasy scientists, which in the end is to protect the natural patrimony of the island.
In addition, the Madagascar Protected Areas portal is up and functioning (see https://protectedareas.mg/) and a revised version of the three volume titanic project The Terrestrial Protected Areas of Madagascar: Their History, Description and Biota published by Vahatra in 2018 is now in e-book form (see http://www.press.uchicago.edu/ucp/books/publisher/pu3431914_3431915.html ). In addition, despite a range of Covid-19 restrictions, the staff and students associated with Vahatra presented an HDR memoir, two PhD thesis, and five Masters, as well as a large assortment of scientific articles being published or submitted. Admittedly, the current world health crisis is a nightmare for any institution whatever their field of intervention, but accepting to live with the current situation and finding other solutions to overcome the challenge is the only way forward. Let us hope that with the experiences already lived during this past fateful year, we will all be able to face 2022 with a new and positive perspective and with more hope for the future. Good luck to all because with a valiant heart nothing is impossible!','M1');