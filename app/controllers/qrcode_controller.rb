class QrcodeController < ApplicationController
  
  def index
  	@address=params[:address]
  	@amount=params[:display]
    url='bitcoin:'+ "1" +'?amount=' + "1"
    @qr = RQRCode::QRCode.new(url, :size => 4, :level => 'l'.to_sym)  
  end
  def show
  end
end
