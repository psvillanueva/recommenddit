class RearrangeColumns < ActiveRecord::Migration
  def change
  	change_column :users, :num_subreddits, :integer, after: :similar_user_0
  end
end
