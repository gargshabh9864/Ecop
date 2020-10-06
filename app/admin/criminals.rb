ActiveAdmin.register Criminal do
  permit_params do
	  permitted = [:name, :address, :aadhar_card_number, :phone_number, :number_of_crime]
	  permitted
	end
end
