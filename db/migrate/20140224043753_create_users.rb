class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :reddit_url
      t.string :similar_user
      t.string :similar_user_url

      t.timestamps
    end
  end
end
