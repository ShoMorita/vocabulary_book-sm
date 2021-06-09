class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :title, null: false
      t.references :user, foreigin_key: true
      t.timestamps
    end
  end
end
