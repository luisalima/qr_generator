require 'spec_helper'

describe QrGenerator do

  before do
    @baseline = 'http://some.example'
  end

  it 'generates n qr codes with the specified baseline' do
    qrGenerator = QrGenerator::QrGenerator.new(baseline: @baseline,
                                  number: 3)
    qrGenerator.generate_qrs.each do |qr|
      expect(qr.instance_variable_get('@data')).to match /#{@baseline}/
    end
  end

  it 'generates n images from the qr codes' do
    pending "TBD"
  end
end
