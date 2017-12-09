class User < ApplicationRecord
  has_secure_password
  has_many :orders

  validate :password_complexity

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end

  def password_complexity
    if password.present?
        if !password.match(/^(?=.*[a-z])/)
          errors.add :password, "doesn't contain a lowercase letter"
        elsif !password.match(/^(?=.*[A-Z])/)
          errors.add :password, "doesn't contain an uppercase letter"
        elsif password.length < 8
          errors.add :password, "needs to be at least 8 characters long"
       end
    end
  end
end
