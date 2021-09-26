class CreateGitRepostories < ActiveRecord::Migration[5.2]
  def change
    create_table :git_repostories do |t|
      t.references :project, foreign_key: true
      t.string :link
      t.string :title
      t.boolean :published. default: false


      t.timestamps
    end
  end
end
