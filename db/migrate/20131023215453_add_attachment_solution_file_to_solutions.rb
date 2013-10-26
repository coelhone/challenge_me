class AddAttachmentSolutionFileToSolutions < ActiveRecord::Migration
  def self.up
    change_table :solutions do |t|
      t.attachment :solution_file
    end
  end

  def self.down
    drop_attached_file :solutions, :solution_file
  end
end
