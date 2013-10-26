class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.text :desc

      t.timestamps
    end
  end
end
