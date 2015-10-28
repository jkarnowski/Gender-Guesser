class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :height
      t.string :weight
      t.string :gender

      t.timestamps null: false
    end
  end
end
