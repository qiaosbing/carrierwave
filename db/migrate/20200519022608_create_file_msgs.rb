class CreateFileMsgs < ActiveRecord::Migration[5.2]
  def change
    create_table :file_msgs do |t|

      t.timestamps
    end
  end
end
