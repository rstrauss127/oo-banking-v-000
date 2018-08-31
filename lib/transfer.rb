class Transfer

  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    if @sender.valid? == true && @receiver.valid? == true
      return true
    else
      return false
    end
  end

  def execute_transaction
    if @amount > @sender.balance
      "Transaction rejected. Please check your account balance."
    @sender.balance = 1000 - @amount
    @receiver.balance = 1000 + @amount

  end

  end
