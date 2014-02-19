# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "ffaker"
def drop_all_the_things
	puts "drop all the things"
		[Product, Category, Customer].map(&:destroy_all)
end

		def set_up_development_database
			200.times do |i|
				products = Product.create(
					{
						name:    Faker::BaconIpsum.words.join(''),
						company: Faker::Company.name,
						description: Faker::BaconIpsum.paragraph,
						ups: Faker::Identification.drivers_license,
						price:   rand(5..278),
						website: Faker::Internet.uri('http'),
					}
					)
			end
				30.times do |i|
					customers = Customer.create(
					{
					name:  Faker::Name.name,
					last_name:  Faker::Name.name,
					email:  Faker::Internet.email,
					contact_phone:  Faker::PhoneNumber.phone_number,
					street:  Faker::AddressUS.street_address,
					city:  Faker::AddressUS.city,
					state:  Faker::AddressUS.state,
					zip:  Faker::AddressUS.zip_code,
				}
				)
				end
				@categories = ["Mens apparel", "Shoes", "School Supplies", "Accessories", "Woman apparel", "Sports Apparel", "Sports equipment", "Electronics" ]
				20.times do |i|
					categories = Category.create(
					{
						name:  @categories.sample,
						description: Faker::BaconIpsum.paragraph
							})
				end
		end	

	case Rails.env
	when 'development'
		drop_all_the_things
		set_up_development_database
	when 'production'

	end

