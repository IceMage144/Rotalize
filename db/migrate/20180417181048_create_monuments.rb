class CreateMonuments < ActiveRecord::Migration[5.1]
  def change
    create_table :monuments do |t|

      t.timestamps
    end
  end
end
