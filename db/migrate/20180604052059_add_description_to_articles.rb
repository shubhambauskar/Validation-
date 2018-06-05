class AddDescriptionToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :description, :text
    add_column :articles, :categories, :text
    add_column :articles, :locations, :text
    add_column :articles, :start_date, :date
    add_column :articles, :end_date, :date
    add_column :articles, :terms_and_conditions, :binary
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
    
  end
end
