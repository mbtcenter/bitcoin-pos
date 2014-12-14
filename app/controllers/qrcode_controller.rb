class QrcodeController < ApplicationController
  
  def index
  	address=params[:address]
<<<<<<< HEAD
  	amount=params[:amount]
	url='bitcoin:'+ address +'?amount=0.0001'
=======
  	amount=params[:display]
	url='bitcoin:'+ address +'?amount=' + amount
>>>>>>> 41eec6e907a0caa4a2b242df298d963a1f9c93b0
	@qr = RQRCode::QRCode.new(url, :size => 4, :level => 'l'.to_sym)  
  end
  def show
  end
end
