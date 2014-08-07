class CreateEdicions < ActiveRecord::Migration
  def change
    create_table :edicions do |t|
      t.string :nombre
      t.boolean :actual

      t.timestamps
    end
  end
end
