#instance variables within a class, in combo with method definitions
class BankAccount 

	attr_accessor :first_name, :last_name, :balance

	def initialize(first_name, last_name, balance)
	  @first_name = first_name
	  @last_name = last_name
	  @balance = balance 
	end

	def deposit(amount)
	  @balance += amount
	end

	def withdraw(amount)
	  @balance -= amount
	end

end

member1 = BankAccount.new("Dan", "Lopez", 100)
member2 = BankAccount.new("Fred", "Areallno", 100000)

p(member1)
p(member2)
p(BankAccount.new("Jon", "Doe", 500))

#i.e. d = BankAccount.new("Dan", "Lopez") 
#then call the methods on the object
