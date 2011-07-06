require 'forca'

describe Forca do

	it 'deve imprimir pontinhos para uma palavra' do
		f = Forca.new('abacate')
		f.output.should == '.......'
	end
	
	it 'deve imprimir pontinhos para uma palavra diferente' do
		f = Forca.new('maca')
		f.output.should == '....'
	end
	
	it 'inicia com 10 chutes' do
		f= Forca.new('oi')
		f.chutes.should == 10
	end
	
	it 'perde um chute qdo chuta errado' do
		f= Forca.new('oi')
		f.chutar 'a'
		f.chutes.should == 9
	end
	
	it 'se acerta não deve subtrair um chute' do
		f= Forca.new('Pera')
		f.chutar 'e'
		f.chutes.should == 10
	end
	
	it 'deve perder se errar 10 vezes' do
		f= Forca.new('Pera')
		10.times { f.chutar 'z' }
		f.chutes.should == 0
		f.should be_perdeu
	end
	
end
