user1 = User.create! username: "abe",
  password: "123", password_confirmation: "123"
user2 = User.create! username: "amy",
  password: "456", password_confirmation: "456"

Account.create! user: user1, account_type: 'Checking', current_balance:   300
Account.create! user: user1, account_type: 'Saving',   current_balance:    25
Account.create! user: user1, account_type: 'VISA',     current_balance:  -384
Account.create! user: user2, account_type: 'Checking', current_balance:   750
Account.create! user: user2, account_type: 'Saving',   current_balance: 15000
