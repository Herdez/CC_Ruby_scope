# Comprender el concepto de scope
# Conocer los diferentes tipos de variables y su uso adecuado
# Comprender el concepto de clase y de instancia
# Conocer también los métodos de instancia y de clase


#Global variable and global constant
$global_var = "This is a global variable"
CONSTANT = 3.1416

	def get_global_var
		$global_var
	end

	def set_global_var=(value)
		$global_var = value
	end

	def get_CONSTANT
		CONSTANT
	end
	
	#Can not be overwrite CONSTANT
	# def set_CONSTANT=(value)
	# 	CONSTANT = value
	# end


class DummyClass
	@@class_variable = "This is a class variable"
	
	def initialize
		@instance_var = "this is my local var"
	end

	def return_my_local_var
		@instance_var
	end

	def get_class_variable
		@@class_variable
	end

	def set_class_variable=(value)
		@@class_variable = value
	end

	def get_global_var
		$global_var
	end

	def set_global_var=(value)
		$global_var = value
	end

	def get_CONSTANT
		CONSTANT
	end

  #Can not be overwrite CONSTANT
	# def set_CONSTANT=(value)
	# 	CONSTANT = value
	# end

end


#Driver code... for getters and setters

clasesita = DummyClass.new
dummy_1 = DummyClass.new
dummy_2 = DummyClass.new

p dummy_1.get_class_variable
p dummy_2.get_class_variable

p dummy_1.set_class_variable=("Hola nuevo valor")
p dummy_2.get_class_variable

p dummy_1.get_class_variable

#get CONSTANT out of the DummyClass
p get_CONSTANT

#Driver code... global variable
p get_global_var

global = DummyClass.new
p global.get_CONSTANT
p global.get_global_var

p set_global_var=("nuevo valor en global")
p global.set_global_var=("nuevo valor de global desde la clase")

p get_global_var
p global.get_global_var
