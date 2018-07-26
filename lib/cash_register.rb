
class CashRegister

	attr_accessor :total, :discount, :items, :previous

	def initialize(disc=0)
		@total = 0
		@discount = disc
		@items = []
		@previous = 0

	end

	def add_item(item,price,quantity=1)

		transaction = price * quantity
		@previous = transaction
		@total += transaction

		for i in 1..quantity
			@items << item
		end



	end

	def apply_discount()

		if @discount == 0
			"There is no discount to apply."
		else
			@total = @total * (1 - (@discount/100.0))
			"After the discount, the total comes to $#{@total.to_i}."

		end

	end

	def void_last_transaction()

		@total -= previous

	end

end
