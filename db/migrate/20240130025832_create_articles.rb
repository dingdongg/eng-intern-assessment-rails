class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.string :author
      t.datetime :date

      t.timestamps
    end
  end
end
