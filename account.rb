class Account
  @@number_value = 1

  def initialize (customer_name, account_balance)
    @customer_name = customer_name
    @account_balance = account_balance
    set_number
  end

  def set_number
    @account_no = @@number_value
    @@number_value += 1
  end

  def deposit(transaction_amount)
    @account_balance > @transaction_amount
    @account_balance += @transaction_amount
  end

  def withdraw(transaction_amount)
    if @account_balance > transaction_amount
      @account_balance -= @transaction_amount
    else
      puts "balance insufficient"
    end
  end

  def display
    puts "Account number : #{@account_no}"
    puts "Account holder name : #{@customer_name}"
    puts "Account balance : #{@account_balance}"
  end
end

acc = Account.new("Monika",50_00_000)
acc.deposit(5000)
acc.display
