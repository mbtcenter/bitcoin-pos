class AddressController < ApplicationController
  def show
  end

  def index
  	personal_wallet = Blockchain::Wallet.new("4c95617c-6274-4732-acdf-6ecc2b03fc28","tanyiming911114",nil)
    @addresses = personal_wallet.addresses
  end
end
