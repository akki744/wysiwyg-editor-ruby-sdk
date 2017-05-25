module FroalaEditor
  # File Validation class.
  # Checks if file is matching the allowed extensions and mime types.
  class FileValidation
    require "mime-types"

    def self.ext_validation(ext, options)
      raise "Not allowed" unless options[:validation][:allowedExts].include?(ext)
    end

    def self.mime_validation(mime, options)
      raise "Invalid mime type" unless options[:validation][:allowedMimeTypes].include?(mime)
    end

    def self.check(file, options)

      mime = file.content_type
      ext = ::File.extname(file.original_filename)

      if ext_validation(ext, options) && mime_validation(mime, options)
      end
    end
  end
end