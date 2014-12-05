
class CustomersController < ApplicationController
  def index
	money=(params[:beer].to_i*0.0001.to_f+params[:water].to_i*0.0002.to_f+params[:champange].to_i*0.0003.to_f).to_s 
	url='bitcoin:1E3z7bn4ZeBa47GBBBSfWBFyw1TrXYonxS?amount='+money
	@qr = RQRCode::QRCode.new(url, :size => 4, :level => 'l'.to_sym)
	personal_wallet = Blockchain::Wallet.new("4c95617c-6274-4732-acdf-6ecc2b03fc28", "tanyiming911114", nil)
	@wallet=personal_wallet.addresses
	#@test=@wallet[0]['address']

	account=personal_wallet.address_balance("1E3z7bn4ZeBa47GBBBSfWBFyw1TrXYonxS")
	@balance=account.balance
	@receive=account.total_received
	@address=account.address
	#@ticker = Blockchain::get_ticker()
  end
end
