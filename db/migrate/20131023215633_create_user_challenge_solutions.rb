class CreateUserChallengeSolutions < ActiveRecord::Migration
  def change
    create_table :user_challenge_solutions do |t|
      t.references :user, index: true
      t.references :challenge, index: true
      t.references :solution, index: true
      t.integer :time
      t.integer :memory
      t.integer :lines
      t.integer :points

      t.timestamps
    end
  end
end
