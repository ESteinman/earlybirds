class AddAttributeToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :byline, :text
  end
end
