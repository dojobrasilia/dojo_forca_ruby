require 'forca'

describe 'init' do

	it 'deve imprimir pontinhos para uma palavra' do
		f = Forca.new('abacate')
		f.output.should == '.......'
	end
	
	it 'deve imprimir pontinhos para uma palavra diferente' do
		f = Forca.new('maca')
		f.output.should == '....'
	end
end
