class RemoveRedditUrlFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :reddit_url, :string
  end
end
