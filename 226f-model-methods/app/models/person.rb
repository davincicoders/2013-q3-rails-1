class Person < ActiveRecord::Base
  validates :first_name,  presence: true
  validates :last_name,   presence: true
  validates :birth_date,  presence: true
  validate :birth_date_not_future

  def birth_date_not_future
    if self.birth_date > Date.today
      errors.add :birth_date, "can't be in the future"
    end
  end

  def age
    (Date.today - self.birth_date).to_i / 365
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
