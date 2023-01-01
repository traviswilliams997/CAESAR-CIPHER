require 'rspec'
require '../script'

describe '#caesar_cipher' do
    it 'returns "Bmfy f xywnsl!"' do
        expect(caesar_cipher("What a string!", 5)).to eql('Bmfy f xywnsl!')
    end
end