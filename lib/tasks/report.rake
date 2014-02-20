namespace :report do
	desc "counts the number MODEL in the store"
		task counts: :environment do
			if ENV['MODEL'].present?
		 	 mode = ENV['MODEL'].captilize.constantize
		 	 count = model.count
			 puts "we have #{count} products"
			else 
				puts "must assign a model"
			end
	end

	desc "counts the number of customers in the store"
		task customer_count: :environment do 
		count = Customer.count 
		puts "we have #{count} customers"
	end
	desc "count the number of orders in the store"
		task order_count: :environment do
		print Order.count

	end
end

