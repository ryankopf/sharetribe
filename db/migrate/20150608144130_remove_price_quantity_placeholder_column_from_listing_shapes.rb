class RemovePriceQuantityPlaceholderColumnFromListingShapes < ActiveRecord::Migration[5.2]
def up
    remove_column :listing_shapes, :price_quantity_placeholder
  end

  def down
    add_column :listing_shapes, :price_quantity_placeholder, :string, after: :action_button_tr_key
  end
end
