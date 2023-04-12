class Ferret
 attr_accessor :name, :owner
	def squeal
		return "squeeeeee"
	end
end 


my_ferret = Ferret.new
my_ferret.name= "Fredo"
ferretname = my_ferret.name
my_ferret.owner= "I am"
 
 
puts my_ferret.inspect
