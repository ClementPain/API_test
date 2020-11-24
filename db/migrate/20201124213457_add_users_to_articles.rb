class AddUsersToArticles < ActiveRecord::Migration[6.0]
  def self.up
    add_reference :articles, :users, index: true
  end
end
