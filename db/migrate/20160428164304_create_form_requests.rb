class CreateFormRequests < ActiveRecord::Migration
  def change
    create_table :form_requests do |t|
      t.text :url
      t.string   :name
      t.string   :email

      t.timestamps null: false
    end
  end
end
