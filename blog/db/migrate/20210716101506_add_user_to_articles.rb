class AddUserToArticles < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :articles, :users
    #add_reference :articles, :user, null: false, foreign_key: true
  end
end
