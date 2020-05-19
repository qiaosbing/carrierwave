class FileMsg < ApplicationRecord
  mount_uploader :file_url, AvatarUploader

end
