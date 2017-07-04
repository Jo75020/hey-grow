class CreateInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :infos do |t|
      t.string :title
      t.string :first_name
      t.string :content
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
