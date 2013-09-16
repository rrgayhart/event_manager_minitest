require './lib/phone_number'

class Attendee
	attr_accessor :first_name, :last_name, :phone_number
	def initialize(data = {})
		#This says that if you don't give me a value
		@first_name = data[:first_name]
		@last_name = data[:last_name]
		@phone_number = PhoneNumber.new(data[:phone_number]).to_s
		#@phone_number = clean_phone_number(data[:phone_number])
	end

end