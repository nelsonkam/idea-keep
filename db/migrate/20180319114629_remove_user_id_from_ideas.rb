class RemoveUserIdFromIdeas < ActiveRecord::Migration[5.1]
  def change
    remove_reference :ideas, :user_id, foreign_key: true
  end
end
