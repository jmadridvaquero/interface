puts "Ready go!"

puts "Howdy, let's clean the database"

Consultant.destroy_all
Service.destroy_all
Review.destroy_all


cons1 = Consultant.create(name: 'Stéphane Guérard',  photo: 'https://res.cloudinary.com/jmadridvaquero/image/upload/v1565364746/interface/Boyce_Cindy_09_coop_4814_m7wvgr.jpg')
cons1.attributes = { expertise: 'planification stratégique, finance, opérations', bio: 'Stéphane a acquis une solide expertise en entrepreneuriat collectif en accompagnant depuis plus de 30 ans des porteurs de projet et autres entrepreneurs dans les secteurs communautaire et de l’économie sociale. Lui-même plusieurs fois créateur d’entreprise, c’est un polyvalent à l’esprit autodidacte qui croit en la capacité des individus à se mobiliser pour atteindre leurs visées. Économiste, administrateur et gestionnaire de projets, il est formé en finances, comptabilité et marketing — scolarité de doctorat en sciences de gestion – et manie les chiffes avec une aisance hors du commun.', locale: :fr }
cons1.attributes = { expertise: 'strategy and management', bio: ' this is the english bio', locale: :en }
cons1.save!
cons2 = Consultant.create( name: 'Éric Steedman', bio: 'lorem ipsum', photo: 'https://res.cloudinary.com/jmadridvaquero/image/upload/v1565365693/interface/E%CC%81ric-photo-1_njiwjo.jpg')
cons2.attributes = { expertise: 'economie sociale', bio: 'Voici la bio de Eric en francais', locale: :fr }
cons2.attributes = { expertise: 'social economy', bio: ' this is Eric english bio', locale: :en }
cons2.save!
cons3 = Consultant.create( name: 'Javier M Vaquero', bio: 'lorem ipsum', photo: 'https://res.cloudinary.com/jmadridvaquero/image/upload/v1565365881/interface/prfile_linkedin_wvdjtl.jpg')	
cons3.attributes = { expertise: 'economie sociale', bio: 'Voici la bio de Eric en francais', locale: :fr }
cons3.attributes = { expertise: 'social economy', bio: ' this is Eric english bio', locale: :en }
cons3.save!

serv1 = Service.create(photo: 'https://res.cloudinary.com/grosjardin/image/upload/v1565625459/Coop%20interface/Asset_3_shw7mf.svg')
serv1.attributes = { name: 'Études, analyses et recherche', description: 'Voici la description des Études, analyses et recherche en francais', locale: :fr }
serv1.attributes = { name: 'Research and analysis', description: 'This is the research service decription in English', locale: :en }
serv1.save!

serv2 = Service.create(
	photo: 'https://res.cloudinary.com/grosjardin/image/upload/v1565626642/Coop%20interface/chart1_euyntt.svg', 
	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing.')
serv2.attributes = { name: 'Stratégies d’organisation', description: 'Voici la description des Stratégies d’organisation en francais', locale: :fr }
serv2.attributes = { name: 'Organization strategies', description: 'This is the Organization strategies service decription in English', locale: :en }
serv2.save!

serv3 = Service.create( 
	photo: 'https://res.cloudinary.com/grosjardin/image/upload/v1565626660/Coop%20interface/tools1_zoxoie.svg', 
	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing.')
serv3.attributes = { name: 'Soutien à la gestion humaine', description: 'Voici la description du Soutien à la gestion humaine en francais', locale: :fr }
serv3.attributes = { name: 'HR management support', description: 'This is the HR management support service decription in English', locale: :en }
serv3.save!

# Service.create!([{ 
# 	name: 'Animation et formation',
# 	photo: 'https://res.cloudinary.com/grosjardin/image/upload/v1565626657/Coop%20interface/flash2_iocvvo.svg', 
# 	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing.'}])
# Service.create!([{ 
# 	name: 'Évaluation',
# 	photo: 'https://res.cloudinary.com/grosjardin/image/upload/v1565626648/Coop%20interface/checklist2_goaspt.svg', 
# 	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing.'}])
# Service.create!([{ 
# 	name: 'Divers',
# 	photo: 'https://res.cloudinary.com/grosjardin/image/upload/v1565626653/Coop%20interface/diamond_q7bzmm.svg', 
# 	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing.'}])

rev1 = Review.create( client: 'Megan Kotze', company: 'Hot Docs Documentary Film Festival', service_id: '1')	
rev1.attributes = { position: 'Development Manager', content: 'Hot Docs commissioned Co-op Interface to conduct the festival’s first economic impact assessment. We worked easily and collaboratively with [them and were].. very pleased with Co-op Interface’s professionalism, attention to detail, and ultimately the results of the study.', locale: :en}
rev1.attributes = { position: 'Gestionnaire au développement', content: 'Voici la review de Hot Docs en francais', locale: :fr }
rev1.save!

puts "seed is complete!"