class CreateIssueOptionRelations < ActiveRecord::Migration
  def change
    create_table :issue_option_relations do |t|

      t.integer :issue_evaluate_id

      t.integer :evaluate_option_id


    end

  end
end