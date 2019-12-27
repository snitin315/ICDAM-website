ActiveAdmin.register SpecialSession do

  form do |f|
    f.input :file, label: "file", as: :file
    f.actions
  end
  controller do
    def create
      # byebug
      @file=SpecialSession.new
      filedata = permitted_params["special_session"]["file"]
      filepath= Dir.pwd + '/app/assets/downloads/'+filedata.original_filename
      File.open(filepath,'wb') do |file|
		file.write(filedata.read())
	end
      @file.file=filedata.original_filename
      if @file.save!
          redirect_to collection_url and return
      end

    end
  end







permit_params do
  params = [:file,]
  params
end
end
