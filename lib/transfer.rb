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
    if @amount > @sender.balance || @sender.valid? == false
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    else
      @sender.balance = 1000 - @amount
      @receiver.balance = 1000 + @amount
      @status = "complete"
    end
  end

  def reverse_transfer
    if @status == "complete"
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = "reversed"
    end
  end


  end
