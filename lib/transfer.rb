class Transfer

  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?()
    #a bank account has a valid()? method
    @sender.valid?()
    @receiver.valid?()
  end


end
