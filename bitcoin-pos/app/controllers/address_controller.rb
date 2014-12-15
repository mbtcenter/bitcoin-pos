class AddressController < ApplicationController
  def show
  end

  def index
  	user = ENV['blockchain_userid']
    pass = ENV['blockchain_userpass']
  	personal_wallet = Blockchain::Wallet.new(user,pass,nil)
    @addresses = personal_wallet.addresses
  end
end
