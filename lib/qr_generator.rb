require 'qr_generator/version'
require 'rqrcode'
require 'haikunator'

module QrGenerator

  class QrGenerator

    def initialize(baseline:, number:, size: 4, level: :h)
      @baseline = baseline
      @number   = number
      @size     = size
      @level    = level
    end

    def generate_qrs
      ([0]*@number).map { |_| generate }
    end

    def generate_images_to(target: )
      # from generate_qrs
      @target   = target
    end

    private

    def generate
      qr = generate_qr
    end

    def generate_qr
      name = Haikunator.haikunate(0)
      qr   = RQRCode::QRCode.new("#{@baseline}/#{@name}",
                                 size: @size,
                                 level: @level)
    end
  end
end
