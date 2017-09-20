class Project < ApplicationRecord
  belongs_to :user

  mount_uploader :file, FileUploader
  mount_uploader :attachment, AttachmentUploader

  validates :project_name, presence: true

  auto_increment :visit_id
end
