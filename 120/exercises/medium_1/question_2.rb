class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    quantity = updated_count if updated_count >= 0
  end
end

# 2 options to make this work
# change attr_reader to attr_accessor, this will add a setter method, allowing
# us to change quanity variable in update_quantity method. However, we have to call
# self on quanity because it's all itself

# Or refer to the instance variable directly and change quanity to @quanity
