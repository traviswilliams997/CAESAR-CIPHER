require 'rspec'
require '../script'

describe '#caesar_cipher' do
    it 'returns "A"' do
        expect(caesar_cipher("A", 0)).to eql('A')
    end
    it 'returns "F"' do 
        expect(caesar_cipher("A", 5)).to eql('F')
    end
    it 'returns "A"' do
        expect(caesar_cipher("A", 26)).to eql('A')
    end
    it 'returns "Bmfy f xywnsl!"' do
        expect(caesar_cipher("What a string!", 5)).to eql('Bmfy f xywnsl!')
    end
    it 'returns "What a string!""' do
        expect(caesar_cipher("What a string!", 0)).to eql('What a string!')
    end
    
end