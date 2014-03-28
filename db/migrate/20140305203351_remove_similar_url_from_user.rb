class RemoveSimilarUrlFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :similar_user_url, :string
  end
end
