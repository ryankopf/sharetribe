class AddUuidToPeople < ActiveRecord::Migration[5.2]
def up
    # `add_column` with `:binary, limit: 16` uses the VARBINARY type,
    # but we want to use the BINARY type, which is why we use plain
    # SQL here.
    execute "ALTER TABLE people ADD uuid BINARY(16) AFTER `id`"
    # NOT NULL and UNIQUE constraints are coming in separate
    # migrations once the old data is migrated
  end

  def down
    remove_column :people, :uuid
  end
end
