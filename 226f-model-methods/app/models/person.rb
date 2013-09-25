class Person < ActiveRecord::Base
  validates :first_name,  presence: true
  validates :last_name,   presence: true
  validates :birth_date,  presence: true
  validate :birth_date_not_future

  def birth_date_not_future
    if self.birth_date != nil
      if self.birth_date > Date.today
        errors.add :birth_date, "can't be in the future"
      end
    end
  end

  def age
    birthday_this_year =
      Date.new(Date.today.year, self.birth_date.month, self.birth_date.day)
    if Date.today >= birthday_this_year
      Date.today.year - self.birth_date.year
    else
      Date.today.year - self.birth_date.year - 1
    end
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
