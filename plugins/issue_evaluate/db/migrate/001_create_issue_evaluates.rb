class CreateIssueEvaluates < ActiveRecord::Migration
  def self.up
    create_table :issue_evaluates do |t|
      t.string :score
      t.integer :issue_id
      t.integer :user_id
      t.datetime :created_on
      t.datetime :updated_on
    end
  end
  
  def self.down
    drop_table :issue_evaluates
  end

end
