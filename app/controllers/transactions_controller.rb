class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
    @users = User.all
  end
end