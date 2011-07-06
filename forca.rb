class Forca
	def initialize(palavra)
		@palavra = palavra
	end
	
	def output
		out = ""
		@palavra.size.times { out << '.' }
		return out
	end
end
