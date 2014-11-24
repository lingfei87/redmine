class CreatePersonScores < ActiveRecord::Migration
  def change
    create_table :person_scores do |t|
      t.integer :assigned_user_id
      t.integer :score
      t.integer :issue_id

    end

  end
end
