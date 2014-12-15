class QrcodeController < ApplicationController
  
  def index
  	address=params[:address]
  	amount=params[:amount]
	url='bitcoin:'+ address +'?amount=0.001'
	@qr = RQRCode::QRCode.new(url, :size => 4, :level => 'l'.to_sym)  
  end
  def show
  end
end
