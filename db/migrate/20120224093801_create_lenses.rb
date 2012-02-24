class CreateLenses < ActiveRecord::Migration
  def change
    create_table :lenses do |t|
      t.string :name
      t.text :description
      t.string :q1
      t.string :q2
      t.string :q3
      t.string :q4
      t.string :q5
    end
    add_index :lenses, :name
  end
end
