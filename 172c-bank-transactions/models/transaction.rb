class Transaction < ActiveRecord::Base
  belongs_to :account

  validate :account_id, presence: true
  validate :date,       presence: true
  validate :memo,       presence: true
  validate :amount,     presence: true
end
