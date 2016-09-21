class InvoiceEntry
  attr_accessor :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    self.quantity = updated_count if updated_count >= 0
  end
end

# You are allowing clients of the class to change the quantity directly
# by calling the accessor, rather than going through the update_quantity method
# to change the quantity. This could create problems later down the line.
