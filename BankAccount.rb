class BankAccount
	@@accountNumber = 0
	@@checking = 0
	@@saving = 0 

############## initialize
	def initialize
		@@accountNumber= @@accountNumber + 1
	end
##############DEPOSIT&& WITHDRAW

	def deposit (num1 = 0, num2 = 0)
		@@checking += num1
		@@saving += num2
		self
	end

	def withdraw (num3 = 0, num5 = 0)

		if num3 <= @@checking
			@@checking -= num3
			self
		else
			puts "insufficient funds in checking"
		end

		if num5 <= @@saving
			@@saving -= num5
			self
		else
			puts "insufficient funds in saving"
		end
	end

#################DISPLAY
	def display_account
		generate_num
		self
	end

	def display_checking
		puts @@checking
		self
	end

	def display_saving
		puts @@saving
		self
	end

	def display_bank
		puts @@saving+@@checking
		self
	end

	def display_numberofacc
		puts @@accountNumber
		self
	end

	private
		def generate_num (num = rand(1..10000000))
			puts num 
		end
	end

account1 = BankAccount.new
account2 = BankAccount.new

account2.display_numberofacc