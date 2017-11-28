class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.column :title, :string
      t.column :description, :string
      t.column :tag, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
