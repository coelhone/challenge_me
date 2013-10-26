class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name
      t.datetime :date
      t.boolean :closed
      t.references :user, index: true
      t.text :desc

      t.timestamps
    end
  end
end
