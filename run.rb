require 'rubygems'
require 'bundler/setup'
require 'dropbox_sdk'
require 'dotenv'
Dotenv.load

dropbox = DropboxClient.new(ENV['API_KEY'])
uploads = dropbox.metadata(ENV['UPLOADS'], 25_000, true)['contents']

uploads.each do |upload|
  unless upload['is_dir'] 
    folder = upload['path'].match(/[0-9]{4}\-[0-9]{2}/).to_s
    new_folder = "/#{ENV['UPLOADS']}/#{folder}"

    begin
      dropbox.file_create_folder(new_folder)
    rescue => e
      raise e unless e.message.match("already exists")
    end

    filename = "#{new_folder}/#{upload['path'].split("/").last}"

    puts "Moving #{upload['path']} to #{filename}"
    dropbox.file_move(upload['path'], filename)
  end
end
