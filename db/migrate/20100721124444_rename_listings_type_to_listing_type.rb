class RenameListingsTypeToListingType < ActiveRecord::Migration[5.2]
def self.up
    remove_column :listings, :listings_type
    add_column :listings, :listing_type, :string
  end

  def self.down
    remove_column :listings, :listing_type
    add_column :listings, :listings_type, :string
  end
end
