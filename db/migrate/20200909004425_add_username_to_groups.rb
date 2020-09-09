class AddUsernameToGroups < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :username, :string
  end
end
