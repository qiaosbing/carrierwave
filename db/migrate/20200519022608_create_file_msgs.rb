class CreateFileMsgs < ActiveRecord::Migration[5.2]
  def change
    create_table :file_msgs do |t|
      t.string "file_url", limit: 255
      t.text "file_info"
      t.timestamps
    end
  end
end
