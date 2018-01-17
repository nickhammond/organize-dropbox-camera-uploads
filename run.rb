require 'dropbox'
require 'dotenv'
Dotenv.load

dropbox = Dropbox::Client.new(ENV['API_KEY'])
uploads = dropbox.list_folder(ENV['UPLOADS']).entries

uploads.each do |upload|
  unless upload.is_a?(Dropbox::FolderMetadata)
    puts "Considering #{upload.path_display}"

    folder = upload.path_display.match(/[0-9]{4}\-[0-9]{2}/).to_s
    if folder == ''
      puts "Cannot extract target folder name from #{upload.path_display} so skipping"
      next
    end

    new_folder = "#{ENV['UPLOADS']}/#{folder}"

    filename = "#{new_folder}/#{upload.path_display.split("/").last}"

    puts "Moving #{upload.path_display} to #{filename}"
    dropbox.move(upload.path_display, filename)
  end
end
