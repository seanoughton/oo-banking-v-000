class Transfer

  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?()
    self.sender.valid?()
    self.receiver.valid?()
  end

  def execute_transaction()
    #if sender account @valid? is false
      #"Transaction rejected. Please check your account balance."

    if self.sender.valid?() && self.sender.balance > amount
      if @status == "pending"
        self.sender.balance -= amount
        self.receiver.balance += amount
        @status = "complete"
      end
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer()
    if @status = "complete"
      self.receiver.balance -= amount
      self..senderbalance += amount
    end
  end


end
