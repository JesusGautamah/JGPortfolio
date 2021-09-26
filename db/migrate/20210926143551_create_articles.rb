class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.references :project, foreign_key: true
      t.text :title
      t.text :description
      t.text :content
      t.text :conclusion
      t.boolean :published, :default => false

      t.timestamps
    end
  end
end
