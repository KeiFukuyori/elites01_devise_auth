class AddLockableColumsToUsers < ActiveRecord::Migration
  def change
    # failed_attempts〜一定回数ログインミスでロック
    add_column :users, :failed_attempts, :integer
    # 
    add_column :users, :unlock_token, :string
    # 
    add_column :users, :locked_at, :datetime
    
    
  end
end
