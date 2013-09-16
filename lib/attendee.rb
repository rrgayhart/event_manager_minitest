class Attendee
	attr_accessor :first_name, :last_name, :phone_number
	def initialize(data = {})
		#This says that if you don't give me a value
		@first_name = data[:first_name]
		@last_name = data[:last_name]
		@phone_number = clean_phone_number(data[:phone_number])
	end

	def clean_phone_number(number)
		if number
			number = number.scan(/[0-9]/).join
			if number.length == 11 && number.start_with?("1")
				number = number[1..-1]
			end
			if number.length != 10
				number = "0000000000"
			end

			return number
		end
	end

end