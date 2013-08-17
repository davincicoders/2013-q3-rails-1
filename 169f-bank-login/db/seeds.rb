User.create(id: 1, username: "abe", password: "123")
User.create(id: 2, username: "amy", password: "456")

Account.create(user_id: 1, account_type: 'Checking', current_balance:   300.00)
Account.create(user_id: 1, account_type: 'Saving',   current_balance:    25.00)
Account.create(user_id: 1, account_type: 'VISA',     current_balance:  -384.00)
Account.create(user_id: 2, account_type: 'Checking', current_balance:   750.00)
Account.create(user_id: 2, account_type: 'Saving',   current_balance: 15000.00)
