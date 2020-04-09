class CreateCommunityCustomizations < ActiveRecord::Migration[5.2]
def change
    create_table :community_customizations do |t|
      t.integer :community_id
      t.string :locale
      t.string :slogan
      t.string :description

      t.timestamps
    end
  end
end
