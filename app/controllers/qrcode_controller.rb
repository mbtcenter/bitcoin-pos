class QrcodeController < ApplicationController
  
  def index
	url='bitcoin:1E3z7bn4ZeBa47GBBBSfWBFyw1TrXYonxS?amount=1'
	@qr = RQRCode::QRCode.new(url, :size => 4, :level => 'l'.to_sym)  
  end

  def show
  end
end
