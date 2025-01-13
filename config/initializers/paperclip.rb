Paperclip::Attachment.default_options.update({
  path: "#{Rails.root}/public/system/:class/:attachment/:id_partition/:style/:filename",
  url: "/system/:class/:attachment/:id_partition/:style/:filename"
})
