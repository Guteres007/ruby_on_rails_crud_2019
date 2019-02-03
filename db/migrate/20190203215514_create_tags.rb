class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tagy do |t|
      t.string :title
      t.integer :nemovitost_id
      t.timestamps
    end
  end
end
