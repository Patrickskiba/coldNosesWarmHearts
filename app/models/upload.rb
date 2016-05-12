class Upload < ActiveRecord::Base
	has_attached_file :file, styles: {thumbnail: "60x60#"}
	validates_attachment :file, content_type: { content_type: "application/pdf" }
end
