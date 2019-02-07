class CreateQuestionComments < ActiveRecord::Migration[5.1]
  def change
    create_table :question_comments do |t|
      t.string :question_id
      t.string :body
      t.integer :user_id

      t.timestamps
    end
  end
end
