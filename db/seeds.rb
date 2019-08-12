puts "Ready go!"

puts "Howdy, let's clean the database"

Consultant.destroy_all
Service.destroy_all
Review.destroy_all


Consultant.create([{ name: 'Stéphane Guérard', bio: 'Stéphane a acquis une solide expertise en entrepreneuriat collectif en accompagnant depuis plus de 30 ans des porteurs de projet et autres entrepreneurs dans les secteurs communautaire et de l’économie sociale. Lui-même plusieurs fois créateur d’entreprise, c’est un polyvalent à l’esprit autodidacte qui croit en la capacité des individus à se mobiliser pour atteindre leurs visées. Économiste, administrateur et gestionnaire de projets, il est formé en finances, comptabilité et marketing — scolarité de doctorat en sciences de gestion – et manie les chiffes avec une aisance hors du commun.', photo: 'https://res.cloudinary.com/jmadridvaquero/image/upload/v1565364746/interface/Boyce_Cindy_09_coop_4814_m7wvgr.jpg', expertise: 'planification stratégique, finance, opérations'}])
Consultant.create([{ name: 'Éric Steedman', bio: 'lorem ipsum', photo: 'https://res.cloudinary.com/jmadridvaquero/image/upload/v1565365693/interface/E%CC%81ric-photo-1_njiwjo.jpg', expertise: 'consultant'}])
Consultant.create([{ name: 'Javier M Vaquero', bio: 'lorem ipsum', photo: 'https://res.cloudinary.com/jmadridvaquero/image/upload/v1565365881/interface/prfile_linkedin_wvdjtl.jpg', expertise: 'consultant'}])	

Service.create!([{ 
	name: 'Études, analyses et recherche',
	photo: 'https://res.cloudinary.com/grosjardin/image/upload/v1565625459/Coop%20interface/Asset_3_shw7mf.svg', 
	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing.'}])
Service.create!([{ 
	name: 'Stratégies d’organisation',
	photo: 'https://res.cloudinary.com/grosjardin/image/upload/v1565626642/Coop%20interface/chart1_euyntt.svg', 
	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing.'}])
Service.create!([{ 
	name: 'Soutien à la gestion humaine',
	photo: 'https://res.cloudinary.com/grosjardin/image/upload/v1565626660/Coop%20interface/tools1_zoxoie.svg', 
	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing.'}])
Service.create!([{ 
	name: 'Animation et formation',
	photo: 'https://res.cloudinary.com/grosjardin/image/upload/v1565626657/Coop%20interface/flash2_iocvvo.svg', 
	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing.'}])
Service.create!([{ 
	name: 'Évaluation',
	photo: 'https://res.cloudinary.com/grosjardin/image/upload/v1565626648/Coop%20interface/checklist2_goaspt.svg', 
	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing.'}])
# Service.create!([{ 
# 	name: 'Divers',
# 	photo: 'https://res.cloudinary.com/grosjardin/image/upload/v1565626653/Coop%20interface/diamond_q7bzmm.svg', 
# 	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing.'}])

Review.create!([{ client: 'Megan Kotze', position: 'Development Manager', company: 'Hot Docs Documentary Film Festival', 
				  content: 'Hot Docs commissioned Co-op Interface to conduct the festival’s first economic impact assessment. We worked easily and collaboratively with [them and were].. very pleased with Co-op Interface’s professionalism, attention to detail, and ultimately the results of the study.',
				  service: Service.first}])	

puts "seed is complete!"