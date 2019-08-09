puts "Ready go!"

puts "Howdy, let's clean the database"

Consultant.destroy_all
Service.destroy_all


Consultant.create([{ name: 'Stéphane Guérard', bio: 'lorem ipsum', photo: 'url', expertise: 'consultant'}])
Consultant.create([{ name: 'Éric Steedman', bio: 'lorem ipsum', photo: 'url', expertise: 'consultant'}])
Consultant.create([{ name: 'Javier M Vaquero', bio: 'lorem ipsum', photo: 'url', expertise: 'consultant'}])	

Service.create!([{ 
	name: 'Études, analyses et recherche', 
	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing.'}])
Service.create!([{ 
	name: 'Stratégies d’organisation', 
	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing.'}])
Service.create!([{ 
	name: 'Soutien à la gestion humaine', 
	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing.'}])
Service.create!([{ 
	name: 'Animation et formation', 
	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing.'}])
Service.create!([{ 
	name: 'Évaluation', 
	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing.'}])
Service.create!([{ 
	name: 'Divers', 
	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing.'}])

Review.create!([{ client: 'Megan Kotze', position: 'Development Manager', company: 'Hot Docs Documentary Film Festival', 
				  content: 'Hot Docs commissioned Co-op Interface to conduct the festival’s first economic impact assessment. We worked easily and collaboratively with [them and were].. very pleased with Co-op Interface’s professionalism, attention to detail, and ultimately the results of the study.',
				  service: Service.first}])	

puts "seed is complete!"