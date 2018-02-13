namespace :utils do
  desc "Popular o banco de dados"
  task seed: :environment do
    puts "Gerando os tipos de contatos"
      Kind.create!(
      	description: "trabalho"
      	)


  	puts "Gerando os contatos"
  	  10.times do |i|
  	  	Contact.create!(
  	  		name: Faker::Name.name,
  	  		email: Faker::Internet.email,
  	  		kind: Kind.all.sample,
  	  		rmk: Faker::Lorem.paragraph([1,2,3,4,5].sample)
  	  		)
  	  end

  	  puts "Gerando os endereços (addresses)"
  	  Contact.all.each do |contact|
  	  	Address.create!(
  	  		street: Faker::Address.street_address,
  	  		city: Faker::Address.city,
  	  		state: Faker::Address.state_abbr,
  	  		contact: contact
  	  		)
  	  end

  	   puts "Gerando os telefones"
  	   Contact.all.each do |contact|
  	  	Phone.create!(
  	  		phone: Faker::PhoneNumber.phone_number,
  	  		contact: contact
  	  		)
  	  end
  end

end
