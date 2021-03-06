class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :user, foreign_key: true
      t.text :title
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
