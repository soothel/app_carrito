class Cart < ApplicationRecord

  has_many :lineitems, dependent: :destroy
  has_many :products, through: :lineitems

  has_many :quotes
  
  # Actions using private
  before_save :save_default_values, :if => :new_record?

  #self is current cart
  def add_item(product_id)
    #puts "ADDING PRODUCT WITH ID #{product_id}"
    #puts "TO CART WITH ID WITH ID #{self.id}"

    current_item = self.lineitems.find_by(product_id: product_id)
    #puts "the current_item is #{current_item}"
    if current_item != nil
      current_item.quantity += 1
    else
    #  puts "THE CURRENT ITEM IS NIL, BUILDING..."
      Lineitem.create(cart_id: self.id, product_id: product_id)
      current_item = self.lineitems.find_by(product_id: product_id)
      p current_item
    end
    return current_item
  end

  def total_price
    self.lineitems.to_a.sum {|item| item.product.price * item.quantity}
  end

  # Private Values
  private
    def save_default_values
      self.deleted = 1
    end 
end