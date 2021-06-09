class CreateProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :problems do |t|
      t.text :cover_paper, null: false
      t.text :back_cover, null: false
      t.text :key_word, null: false
      t.references :content, foreigin_key: true
      t.timestamps
    end
  end
end
