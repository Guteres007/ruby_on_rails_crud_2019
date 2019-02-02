class CreateNemovitosts < ActiveRecord::Migration[5.2]
  def change
    create_table :nemovitosti do |t|
       t.string :nadpis
       t.text :popis
      t.timestamps
    end
  end
end
