class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.references :user, index: true
      t.references :challenge, index: true
      t.integer :time
      t.integer :memory
      t.integer :lines
      t.integer :points

      t.timestamps
    end
  end
end
