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


puts "seed is complete!"