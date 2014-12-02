
class CustomersController < ApplicationController
  def index
	url = (params[:beer].to_i*0.01.to_f+params[:water].to_i*0.02.to_f+params[:champange].to_i*0.03.to_f).to_s 
	@qr = RQRCode::QRCode.new(url, :size => 3, :level => 'l'.to_sym)
  end
end
