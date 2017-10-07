ActiveAdmin.register CallForPaperSubHeading do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
form do |f|
  f.input :content, label: "name"
  f.input :callforpaper_id, :as => :number
  f.actions
end

permit_params do
  params = [:content,:callforpaper_id]
  # params.push :author_id if current_user.admin?
  params
end
end
