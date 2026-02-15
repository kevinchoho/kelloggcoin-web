class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all # 关键：把100条交易传给视图
  end
end
EO
cat > app/models/transaction.rb << 'EOF'
class Transaction < ApplicationRecord
  # 关联转出用户（ICO交易可选）、转入用户（必选）
  belongs_to :from_user, class_name: "User", optional: true
  belongs_to :to_user, class_name: "User"
end
