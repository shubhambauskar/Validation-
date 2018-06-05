class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |f|
      f.string :title
    end
  end
end
