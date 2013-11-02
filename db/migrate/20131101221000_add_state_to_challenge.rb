class AddStateToChallenge < ActiveRecord::Migration
  def up
    add_column :challenges, :state, :string, defaul: 'created'
    remove_column :challenges, :closed

    Challenge.update_all(state: 'created')
  end

  def down
    remove_column :challenges, :state
    add_column :challenges, :closed, :boolean
  end
end
