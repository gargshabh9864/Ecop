ActiveAdmin.register Station do
  permit_params do
	  permitted = [:name, :address, :contact_person_name, :contact_person_number]
	  permitted
	end
end
