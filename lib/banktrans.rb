### Challenge 3 - Bank Transactions
# Create a prompt that asks the user if they would like to display their balance, withdraw or deposit. Write three methods to perform these calculations and output the result to the user. Here is a sample output:
#
# ```
# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# Thank you!
# ```

def bank_trans
  balance = 4000
  p "Your current balance is #{balance}."
  p "What would you like to do? (deposit, withdraw, check_balance)"
  action = gets.chomp

  if action == 'deposit'
    p "How much would you like to deposit?"
    amount = gets.chomp.to_i
    balance += amount
    p "Your current balance is #{balance}"

  elsif action == 'withdraw'
    p "How much would you like to withdraw"
    amount = gets.chomp.to_i
    balance -= amount

  elsif action == 'check_balance'
    p "Your current balance is #{balance}"
  end

  p "Are you done?"
  doneornot = gets.chomp
  if doneornot == "yes"
    p "Thank you!"
  else
    bank_trans
  end
end

bank_trans
