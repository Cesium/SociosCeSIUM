class TransactionsController < ApplicationController

  def new
  	@transaction = Transaction.new
  end

  def create
  	@transaction = Transaction.new(transaction_params)
  	if @transaction.save
  		redirect_to @transaction
  	else
  		render 'new'
  	end
  end


  def index
  	@transactions = Transaction.all
  end

  private
  	def transaction_params
  	  params.require(:transaction).permit!
  	end

end
