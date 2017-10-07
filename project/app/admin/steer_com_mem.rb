ActiveAdmin.register SteerComMem do
  permit_params do
    params = [:name, :information, :steercompost_id]
    params
  end

  form do |f|
    f.input :name, label: "name"
    f.input :information, label: "information"
    f.input :steercompost_id, :as => :number
    f.actions
  end


end
