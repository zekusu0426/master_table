class User < ActiveRecord::Base
  attr_accessor :month, :day, :year
  validate :validate_birthday

  validates :emp_id, :name, :birthday, :phone1, :post_number, :address, presence: true
  validates :emp_id, uniqueness: true

private
  def convert_birthday
    begin
      self.birthday = Date.new(self.year.to_i, self.month.to_i, self.day.to_i)
    rescue ArgumentError
      false
    end
  end

  def validate_birthday
    errors.add("Created at date", "is invalid.") unless convert_birthday
  end
end
