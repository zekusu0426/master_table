class User < ActiveRecord::Base
   validates :emp_id, :name, :birthday, :phone1, :post_number, :address, presence: true
   validates :emp_id, uniqueness: true
end
