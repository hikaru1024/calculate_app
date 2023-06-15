class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name, null: false, comment: '名前'
      t.timestamps
    end
  end
end
