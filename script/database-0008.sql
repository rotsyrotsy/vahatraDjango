CREATE TABLE project(
    id serial NOT NULL PRIMARY KEY,
    title varchar(150),
    description text,
    year int
);
ALTER TABLE project ADD COLUMN image varchar(255)

INSERT INTO project(id,title,description,year) VALUES (1,'Climate change','The intent of this project is to measure possible effects of global climatic change on certain endemic terrestrial vertebrates. This is being accomplished by revisiting three different mountains on the island intensively studied along an elevational gradient over 15 years ago and repeating the inventory methods down to very fine details, such as the same dates and placements of different types of traps. While data on the presence and absence of a given taxonomic group will be used in comparing the previous and recent inventories, the unique aspect we have added to the project is employing molecular genetic data. We will becomparing shifts in haplotypic frequencies through time and this measure may be directly correlated with global warming, pushing animals to higher altitudes to find preferable biotypes.',2015);
INSERT INTO project(id,title,description,year) VALUES (2,'Transmissible diseases','In this project, followed viro-serological and vector populations of wild vertebrates and a quantitative assessment on a regional risk of introduction and spread of the disease are done. This is a project funded by the CRVOI (Centre for Research and Watch on emerging diseases in the Indian Ocean) Reunion and associated team from the Institut Pasteur de Madagascar (IPM). The latter has been working for several years on transmission mechanisms of many diseases. 
The specific objectives of this project are to:
    -assess the intensity of viral circulation and circulation periods in a pilot area of Madagascar,
    -identify potential wild reservoirs of the virus in Madagascar,
    -establish an epidemiological assessment in Madagascar,
    -identify the various potential modes of introduction and transmission in Madagascar, and assess the risk of endemicity of the disease.
',2015);
INSERT INTO project(id,title,description,year) VALUES (3,'Conservation biology','Vahatra is also interested in different types of research involving:
    -vertebrates taxonomy and phylogeny
    -vertebrates biogeography
    -ecology and biology
    -conservation
    -impact assessment
 ',2015);
INSERT INTO project(id,title,description,year) VALUES (4,'StopRats','Stoprats is a multi-partner project financed by the Secretariat of the African and Caribbean Group, led by Natural Resources Institute, University of Greenwich, United Kingdom and including countries like Namibia, Madagascar, Sierra Leone, South Africa, Swaziland , Tanzania. The general objectives of the project are to build capacity in science, in technology and innovation in the management of rodent pests and to contribute to the sustainable development of Africa and Madagascar, so that these institutions could have knowledge of the main indicators of poverty through rodent impacts on agricultural production and food security systems.

Students from the Institute of Technical Science and Environment, University of Fianarantsoa, from the Animal Biology Department, University of Antananarivo, a team of environmental educators, and colleagues from the Institut Pasteur de Madagascar, provide the smooth running of the activities of this project.

In 2014, fifteen scientists from the countries members of Stoprats project were in Madagascar for the field school. Then the series of investigations were conducted in the Malagasy highplands to have knowledge about the extent of damage caused by rats and the methods used to fight against these problems. Meetings with stakeholders on the problems of rats, namely, the responsible of the agriculture, breeding and health were also conducted in Fianarantsoa. Researches on diets and habitats used by the rats and endemic rodents, by using stable isotopes have been undertaken as part of this project.',2014);
INSERT INTO project(id,title,description,year) VALUES (5,'E-book on the protected areas of madagascar and other user tools','In late 2015, Association Vahatra received a three-year grant from CEPF to
conduct a large-scale review of the protected areas system of Madagascar.
The bilingual French-English three volume book entitled Les aires protégées
terrestres de Madagascar : leur histoire, description et biote / Terrestrial
protected areas of Madagascar: Their history, description and biota was
published by Association Vahatra in late 2018. Based on an additional grant
from CEPF to Strand Life Science (Bangalore, India), with Association
Vahatra as a partner, an e-book of a revised and corrected version of the
protected area book has been produced, and is distributed by The University
of Chicago Press (https://w.bibliovault.org/BV.titles.epl?pc=596&sort=title).
The printed volumes of the protected area book are cumbersome to say the
least, weighing close to 7 kg, and the e-book version greatly facilitates their
utilization. Further, to simplify usage and be more user-friendly, separate
e-books have been prepared for the French and English language versions.
Other aspects of this project included the creation of a website in Malagasy,
French, and English containing lots of details on the 98 terrestrial protected
areas of Madagascar covered in the book, including up-to-date species
lists of vertebrates known from each site, as well as the means for citizen scientists and naturalists to update the downloadable species lists based on
new observations and published data. Based on a day-seminar presentation
in Antananarivo by Thomas Vattakaven and Prabhakar Rajagopal of Strand
Life Science and different members of Association Vahatra to potential
users of the site, important input was received on aspects that facilitated the
website organization. The timing of the seminar was just before the start of
the COVID-19 epidemic and all subsequent work on the project has been
via email and video conferences. Another important aspect of this project
was uploading on to a cloud and providing free access to about 9000 pdf
files used in writing the book, which include a range of different types of
publications, unpublished reports, previously unavailable DEA and Master’s
memoires, Ph.D. theses, and other types of diploma documents from the
Malagasy university system. The Madagascar Protected Areas portal site can
be accessed at https://protectedareas.mg/. The portal is an important tool for
researchers, students, and conservationists on Madagascar and overseas and
we hope to amend the project to more advanced stages. In early December
2021, our colleagues at Strand Life Sciences in Bangalore via a video
conference formally presented the portal in Madagascar to an assortment of interested individuals physically present at Vahatra or connected via a video
conference, which was followed by a reception. The event received press
and television coverage. The final accepted report to CEPF was submitted in
late 2021 and the first phase of the project has now been completed.',2015);
INSERT INTO project(id,title,description,year) VALUES (6,'Indian house Crow eradication and invasive species surveillance','In the context of this project, Madagascar Fauna and Flora Group (MFG)
in collaboration with Association Vahatra and other partners received a
grant to eradicate the recently introduced and highly invasive Indian House
Crow (Corvus splendens) in the Toamasina area, central eastern coast of
Madagascar, as well as other areas the species has turned up on the island.
The grant also included advancing different types of research associated with
problems imposed on Madagascar’s ecosystems and the Malagasy people
by invasive animal species. MFG was responsible for orchestrating the
eradication of the Indian House Crow and Vahatra’s interventions focused
on scientific aspects associated with the biology, distribution, and zoonotic diseases of the crow and House Sparrows (Passer domesticus) in and
around Toamasina. More specifically, scientific research on invasive species
included projects conducted by three Master’s students from The University
of Antananarivo and working with Vahatra scientists, all of which were
presented in 2021. These studies included the presence and absence of Indian
House Crows in all major ports on the island and population estimates (by
Estelle Raobson Hanitrandrasana); the breeding biology and dietary regime
of House Sparrows in the city of Toamasina (by Saholy Raolihanitrasina);
and the diet of a quasi-invasive bat species living in human-built structures
(by Lomeris Todilahy). As of late 2021, MFG and the project collaborators
have removed all of the known House Crows on Madagascar, which is a
major accomplishment.',2015);
INSERT INTO project(id,title,description,year) VALUES (7,'Land use in the Sava region and global health challenges','This project is based on a grant awarded to Duke University, with Dr.
Charles Nunn as the Principal Investigator, in 2019 through the Ecology and
Evolution of Infectious Diseases (EEID) program, a joint initiative between the National Institute of Health and the National Science Foundation (NSF).
This large-scale project aims to understand the linkages between diseases
circulating in the foothills of the Marojejy Massif across a habitat mosaic
of native forest, agricultural areas, and near villages for which endemic and
introduced animals may act as reservoirs and the source of transmission.
Association Vahatra is one of the collaborating organizations focused on
field capture of bats, endemic and introduced small mammals, and collecting
the needed samples for the zoonotic disease analyses. Toky Randriamoria, a
post-doc in the context of the project, is responsible for the field sampling
and seconded by Voahangy and Steve. A new assistant, Rianja Nantenaina
Randriamifidisoa, has been engaged to reinforce the field team. Fifaliantsoa
Rasolobera, the previous field assistant, is now incorporated in the project
as a PhD student and working on small mammal ecology and distribution.
Three different field camps at the foothills of the massif, each visited during
three different seasons for sampling in a range of habitats, have solar panels
to provide the needed energy to run a refrigerator to keep samples at the required low temperatures. In association with a considerable range of
collaborators studying multiple facets of local circulating zoonotic diseases
and parasites, this research project aims to study novel methods to predict
disease spread, particularly different infectious diseases being important
human health concerns on Madagascar.
Three Vahatra students from The University of Antananarivo and one
from The University of Antsiranana are taking part in this project: Tamby
Ranaivoson (PhD student) and Fifaliantsoa Rasolobera (PhD student,
mentioned above) working on small mammal ecology and reproduction;
Daniel Falimiarintsoa (Masters student) working on bat ecology and habitat
associations on the southwestern slopes of the Marojejy Massif; and Johanna
Rafanomezanjanahary working on bat ecology and habitat associations
on the southwestern slopes of the Marojejy Massif; Daniel will present
in March 2022 and Johanna presented in March 2021. Fieldwork for this
project continues until mid-2023.',2019);
INSERT INTO project(id,title,description,year) VALUES (8,'Restauration Patrimoine mondial: Forêts humides de l’Atsinanana','The moist evergreen moist evergreen forests of the eastern region of
Madagascar are home to an exceptional diversity of plants and animals and
these ecosystems play a fundamental role in maintaining biodiversity and
ecological processes. Their integration some years back within UNESCO’s
network of World Heritage Sites, the series of protected areas known
as “The Rainforest of the Atsinanana”, was a crucial step in supporting
efforts to preserve their Outstanding Universal Values. Unfortunately, these
ecosystems for different economic and cultural reasons are often subject to
anthropogenic pressures. The 2009 political crisis on Madagascar, a period
of near total anarchy in certain areas of the island, allowed people to rush
massively into protected areas for illegal exploitation of rosewoods, gold
panning, charcoal production, and to acquire new agricultural lands via
deforestation. The integrity of the biological diversity of The Rainforest of
the Atsinanana and their Outstanding Universal Values have been seriously
threatened. The magnitude of the situation was such that UNESCO’s
World Heritage Committee decided in 2010 to classify The Rainforest of
the Atsinanana in the World Heritage list of sites “In Danger”. The purpose
of this current project financed at the level of several million US dollars
by the Korea International Cooperation Agency (KOICA) is to rectify the
situation through several different approaches: economic development,
public education, and studies of the regional biota.
The role of Association Vahatra in the project is to examine patterns of
biotic diversity at the focal sites through biological inventories, with a focus
on change through time. Vahatra scientists and students surveyed several
of these sites some 20-25 years ago and comparisons of possible change at
the scale of several decades can be made, and if such changes have taken
place, to determine the probable causal reasons. Finally, with biodiversity
data across nearly 20+ years, it will be possible to strengthen protection of
the sites and better understanding different pressures. Another aspect is to
install a system of ecological monitoring sites and automated meteorological
stations to provide measures of climate change in the future.
In early 2021, in the context of this BIOCOM project, a Vahatra field
team, together with nine students from The University of Antsiranana and another individual working for the
protected area manager took part
in a field school and conducted an
eco-biological evaluation of the dry
forests of Montagne de Français in
the far north.
The results of this field project
have been accepted for publication
in Malagasy Nature and will appear
in 2023. Further, over the course of
nearly eight weeks in October and
November 2021, a large field team
conducted an elevational transect
of Marojejy, one of The Rainforest
of the Atsinanana sites. The survey
repeated in fine detail the transect of
1996 and across different groups of
organisms. This was a large-scale
logistic exercise, with five camps between the lowland forest and summital zone of the massif, and with
displacements of over 40 porters at a time to carry gear, supplies, and food.
The material included solar panels, a large battery, and a small refrigerator
to maintain collected samples from forest-dwelling mammals on the
massif and tie-in to the Duke University (NIH and NSF) zoonotic disease
research project mentioned above. Vahatra and colleagues are in the process
of analyzing data to understand patterns of possible change through time
and the scientific results will be available in the near future. In late 2022
the Vahatra team will redo another elevational transect in the Andohahela
protected area in the same fashion as Marojejy and part of the The Rainforest
of the Atsinanana.',2021);
INSERT INTO project(id,title,description,year) VALUES (9,'Diversity and transmission dynamics of infectious agents in malagasy bats','The scientific objectives of this project are to characterize the diversity of
infectious agents circulating in bat populations of northern Madagascar and
to study the temporal dynamics of transmission, particularly within breeding
and day-roosting colonies. Funding is based on a grant from the Fonds
Européen de Développement Régional (FEDER). The study in collaboration
with Dr. Camille Lebarbenchon from the Processus Infectieux en Milieu
Insulaire Tropical (PIMIT) laboratory and associated with The University
of La Reunion, and with a Malagasy post-doc, Riana Ramanantsalama, who
did his PhD with Vahatra, employs samples of captured/marked/released
bats for laboratory analysis. For each bat, samples include oral and rectal
swabs, as well as ectoparasites.
In the original plan for fieldwork, it was proposed that each study colony,
including caves in Ankarana and synanthropic roost sites in buildings
in the nearby town of Ambilobe, to be visited every 3-4 months to study
seasonal shifts in the temporal dynamics of infection at the population level.
Individuals of the fruit bat Rousettus madagascariensis (family Pteropodidae)
living in the caves of Ankarana are marked with uniquely numbered rings in order to study infection dynamics at the level of individuals. With the
lockdown of 2020, only two visits were conducted to the study sites in that
year and we were only able to restart the fieldwork in late 2021. Because
of all of the COVID-19 related delays, an extension of the project has been
requested from the granting agency. We are still awaiting that decision',2020);
INSERT INTO project(id,title,description,year) VALUES (10,'Save the rainforest sweden (Rädda Regnskog) project at Ambohitantely','The Réserve Spéciale d’Ambohitantely is one of the last remnant Central
Highland montane forests on the island and it is of high priority to conserve,
even though already notably fragmented. This fragile and vulnerable relict
forest is home to rich and unique biodiversity from the invertebrate to the
vertebrate fauna as well as for the flora. Since 2007, the Association Vahatra
has organized in this protected area a series of regular research missions,
field schools or forms of ecological and biological training for students, as
well as for conservation agents and managers.
Over the past decades, between the anthropogenic pressures of wild
grassland fires, some being set as acts of anarchy, which enter into the
remaining natural forest, the number of forest parcels and their surface areas
have been dramatically reduced or disappeared forever. In a collaborative
project between Association Vahatra and Madagascar National Parks, the
organization responsible for the management of the protected area, and with funding from Save the Rainforest Sweden, and in collaboration with
Johannes Bergsten, Swedish Museum of Natural History in Stockholm,
we have taken steps to try to conserve Ambohitantely and in association
with local villagers. The first critical step to conserve the forest was the
completion of a firebreak around the largest remnant parcel, a massive
activity and done 100% by hand. Between April and June 2021, just before
the bush fire season, about 19 km of firebreaks were completed and these
were installed in a manner to stop open country fire progression into the
forest.
Since 2015, scientific members of Association Vahatra with different
colleagues were solicited to conceive and design a simple and practical
guide for ecological restoration of three protected areas (Marojejy, Masoala,
and Ranomafana). To restore the ecological integrity of Ambohitantely,
a significant portion of which has been destroyed or heavily degraded by
bush fires, and several blocks will soon not be viable without intervention,
the same methods and technics have been applied as for the sites mentioned
above. An expert Malagasy Botanist in collaboration with Achille is in charge of the implementation of this challenging project. For now, we adopt
active and assisted passive restoration strategy. A plant nursery has been
established and the restoration site, that will link in a corridor fashion the
main forest and a nearby forest fragment, is already prepared with a matrix
of dug planting holes filled with compost and ready for transplantation in
early 2022.
Previous studies carried out at Ambohitantely mainly concern vertebrates
and plants, but the site includes different aquatic habitats for insects. To
advance studies on the diversity and ecology of aquatic insects, Vahatra
has engaged a post-doc student from the Entomology Department at The
University of Antananarivo to carry out biological inventories of aquatic
insects within and around the protected area. He is also in charge of the
training and mentoring of Master students working on insects at his home
institution. Two of these students are now finalizing the preparation of their
memoirs.

In Ambohitantely, there is no functional infrastructure other than rugged
camping sites for researchers, students or for other visitors. To promote
research activities and to increase the frequency of visitors, in the context of
this project, we are in the process of constructing a humble biological station
of 14 x 5 m with three rooms (kitchen, lab, and large room/dormitory for 8
persons). Construction is now well underway and 40 000 fires clay bricks,
cement, iron, etc. have been delivered to the site. The building is at the edge
of the Madagascar National Parks village complex and a short distance from
the main forest.',2021);
INSERT INTO project(id,title,description,year) VALUES (11,'Developing effective rodent control strategies to reduce disease risk in ecologically and culturally diverse rural landscapes','The project, named REDROZ (Reduce Rodent Zoonosis), aims at reducing
the risk from rodent-borne infections in Africa, including Madagascar, by increasing knowledge and expertise needed to develop holistic rodent
management applicable for local conditions and at the community level.
Research is designed to answer whether sustainable community-based
rodent management can reduce risks of disease transmission and improve
overall human health and wellbeing. Multidisciplinary activities conducted
in Tanzania and Madagascar, focus on three rodent-borne infections
(leptospirosis, plague, and rickettsiosis) and proceed in two stages. First,
we fill knowledge gaps, and deepening our existing collaborations with
communities and stakeholders, allowing us to co-develop rodent control that
are holistically evaluated in the second stage. We are developing a spatially
realistic modelling tool to explore likely responses of rodent populations and
rodent-borne infections to localized rodent control. Analyses of rich archived
datasets and new experimental trials are being used to parameterize models
and test output. In Madagascar, the study is carried-out in collaboration with
Institut Pasteur de Madagascar. In the first stage, we work in 12 villages
within Analavory/Miarinarivo commune (Central Highlands to the west of
Antananarivo), where villages act as replicates, experimentally determining
how rodent movements and the prevalence of rodent-borne infections
are impacted by control. We use a range of qualitative and quantitative
social science to produce a deeper understanding of community practices,
behavior, and understanding around relevant issues of health, hygiene and
pest management, and work with stakeholders from health, agriculture,
and environment spheres to understand their perceptions, policies, and
support services. In the second stage, we conduct a comparative trial in
12 intervention - non-intervention village pairs (n=24), co-developing
and trialing rodent management strategies over one year, and monitoring
changes to human practices and attitudes, rodent damage, disease within the
rodent population (i.e. leptospirosis, plague, and rickettsiosis), human health
indicators and time/financial inputs. Collaborative workshops are designed
to facilitate cross-country comparisons and high-level training to early career
researchers. A PhD student from The University of Antananarivo, Todisoa
Radovimiandrinifarany, is integrated in this project in the context of his PhD
thesis, and two students from The University of Fianarantsoa was taking part
in the fieldwork in the context of capacity building.',2021);


CREATE TABLE projectIntervenant(
    id serial PRIMARY KEY,
    idProject serial,
    idInst varchar(20)
);

ALTER TABLE projectIntervenant 
    ADD CONSTRAINT fk_projectIntervenant_project FOREIGN KEY (idproject) REFERENCES project(id) ;
    
ALTER TABLE projectIntervenant 
    ADD CONSTRAINT fk_projectIntervenant_inst FOREIGN KEY (idInst) REFERENCES institution(id) ;

INSERT INTO projectIntervenant(idProject,idInst) VALUES (5,'I14');
INSERT INTO projectIntervenant(idProject,idInst) VALUES (6,'I14');
INSERT INTO projectIntervenant(idProject,idInst) VALUES (6,'I20');
INSERT INTO projectIntervenant(idProject,idInst) VALUES (7,'I21');
INSERT INTO projectIntervenant(idProject,idInst) VALUES (7,'I22');
INSERT INTO projectIntervenant(idProject,idInst) VALUES (7,'I23');
INSERT INTO projectIntervenant(idProject,idInst) VALUES (8,'I24');
INSERT INTO projectIntervenant(idProject,idInst) VALUES (8,'I25');
INSERT INTO projectIntervenant(idProject,idInst) VALUES (8,'I7');
INSERT INTO projectIntervenant(idProject,idInst) VALUES (9,'I26');
INSERT INTO projectIntervenant(idProject,idInst) VALUES (9,'I27');
INSERT INTO projectIntervenant(idProject,idInst) VALUES (9,'I28');
INSERT INTO projectIntervenant(idProject,idInst) VALUES (11,'I29');
INSERT INTO projectIntervenant(idProject,idInst) VALUES (11,'I30');

CREATE OR REPLACE VIEW public.projectwithpartners
AS SELECT p.id,
    p.title,
    p.description,
    p.year,
    im.name as image,
    string_agg(i.name::text, ', '::text) AS partners
   FROM project p
   	left join image im on im.id = p.idimage 
     LEFT JOIN projectintervenant p2 ON p.id = p2.idproject
     LEFT JOIN institution i ON i.id::text = p2.idinst::text
  GROUP BY p.id, im.id;