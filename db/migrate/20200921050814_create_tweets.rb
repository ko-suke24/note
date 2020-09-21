class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|

      t.timestamps
      t.string :title, null: false
      t.text :text, null: false
      t.string :images
    end
  end
end
