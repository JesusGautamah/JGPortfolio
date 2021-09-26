class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.references :project, foreign_key: true
      t.text :title
      t.text :link
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
