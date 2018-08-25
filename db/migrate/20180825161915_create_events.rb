class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :describe
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
