
class CustomersController < ApplicationController
  def index
	money=(params[:beer].to_i*0.0001.to_f+params[:water].to_i*0.0002.to_f+params[:champange].to_i*0.0003.to_f).to_s 
	url='bitcoin:15RPiw5v2ses7o3xqbQe6PAvqxKHHeomG1?amount='+money
	@qr = RQRCode::QRCode.new(url, :size => 4, :level => 'l'.to_sym)
	@wallet = Blockchain::Wallet.new("4c95617c-6274-4732-acdf-6ecc2b03fc28", "tanyiming911114", nil)
	@address=@wallet.addresses
	#@address=@address1[balance]
  end
end
