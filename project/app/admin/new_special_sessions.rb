ActiveAdmin.register NewSpecialSession do
  form do |f|
    f.input :file, label: "file", as: :file
    f.input :name, label: "name"
    f.input :description, label: "description"

    f.actions
  end
  controller do
    def create
      # byebug
      @file=NewSpecialSession.new
      @file.name = permitted_params["new_special_session"]["name"]
      @file.description = permitted_params["new_special_session"]["description"]
      filedata = permitted_params["new_special_session"]["file"]
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
  params = [:file,:name,:description]
  params
end

end
