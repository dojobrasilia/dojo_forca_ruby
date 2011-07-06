class Forca
	def initialize(palavra)
		@palavra = palavra
		@chutes= 10
	end
	
	def output
		out = ""
		@palavra.size.times { out << '.' }
		return out
	end
	
	def chutes
		return @chutes
	end
	
	def chutar(char)
		@chutes -= 1 unless @palavra.include?(char)
	end
	
	def perdeu?
		true
	end
	
end
