class AddTimestampsToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :created_at,:datetime
    add_column :articles, :updatedat,:datetime
  end
end
