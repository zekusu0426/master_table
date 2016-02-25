class User < ActiveRecord::Base
  # 必須項目
  validates :name, :birthday, :phone1, :post_number, :address, presence: true
end
