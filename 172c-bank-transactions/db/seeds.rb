User.create(id: 1, username: "abe", password: "123")
User.create(id: 2, username: "amy", password: "456")

Account.create(
  id: 1, user_id: 1, account_type: 'checking', current_balance:   300.00)
Account.create(
  id: 2, user_id: 1, account_type: 'saving',   current_balance:    25.00)
Account.create(
  id: 3, user_id: 1, account_type: 'visa',     current_balance:  -384.00)
Account.create(
  id: 4, user_id: 2, account_type: 'checking', current_balance:   750.00)
Account.create(
  id: 5, user_id: 2, account_type: 'saving',   current_balance: 15000.00)

Transaction.create(
  account_id: 1,
  date: '2013-07-25',
  amount: 1200.00,
  memo: 'Income'
)
Transaction.create(
  account_id: 1,
  date: '2013-08-01',
  amount: -900.00,
  memo: 'Rent'
)
Transaction.create(
  account_id: 2,
  date: '2013-03-01',
  amount: 25.00,
  memo: 'Initial deposit'
)
Transaction.create(
  account_id: 3,
  date: '2013-04-01',
  amount: -300.00,
  memo: 'Plane ticket'
)
Transaction.create(
  account_id: 3,
  date: '2013-04-02',
  amount: -84.00,
  memo: 'Cell phone'
)

Transaction.create(
  account_id: 4,
  date: '2013-06-01',
  amount: 800.00,
  memo: 'Transfer from saving'
)
Transaction.create(
  account_id: 4,
  date: '2013-07-10',
  amount: -25.00,
  memo: 'Haircut'
)
Transaction.create(
  account_id: 5,
  date: '2013-08-10',
  amount: -25.00,
  memo: 'Haircut'
)
Transaction.create(
  account_id: 4,
  date: '2013-06-01',
  amount: 5000.00,
  memo: 'Income'
)
Transaction.create(
  account_id: 4,
  date: '2013-07-01',
  amount: 5000.00,
  memo: 'Income'
)
Transaction.create(
  account_id: 4,
  date: '2013-08-01',
  amount: 5000.00,
  memo: 'Income'
)
