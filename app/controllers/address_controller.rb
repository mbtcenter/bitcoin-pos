class AddressController < ApplicationController
  def show
  end

  def index
  	user='4c95617c-6274-4732-acdf-6ecc2b03fc28'
  	pass='tanyiming911114'
  	#user = ENV['blockchain_userid']
    #pass = ENV['blockchain_userpass']
  	personal_wallet = Blockchain::Wallet.new(user,pass,nil)
    @addresses = personal_wallet.addresses
  end
end
