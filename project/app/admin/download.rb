ActiveAdmin.register Download do

  form do |f|
    f.input :download_file, label: "file", as: :file
    f.input :file_name, label: "file display name"
    f.actions
  end
  controller do
    def create
      # byebug
      @file=Download.new
      filedata = permitted_params["download"]["download_file"]
      filepath= Dir.pwd + '/app/assets/downloads/'+filedata.original_filename
      File.open(filepath,'wb') do |file|
		file.write(filedata.read())
	end
      @file.download_file=filedata.original_filename
      @file.file_name=permitted_params["download"]["file_name"]
      if @file.save!
          redirect_to collection_url and return
      end

    end
  end







permit_params do
  params = [:download_file,:file_name]
  params
end
end
