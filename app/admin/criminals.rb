ActiveAdmin.register Criminal do
  permit_params do
	  permitted = [:name, :address, :aadhar_card_number, :phone_number, :number_of_crime]
	  permitted
	end

	form multipart: true do |f|
		f.semantic_errors *f.object.errors.keys
		f.inputs 'Criminal details' do
			f.input :name
			f.input :address
			f.input :aadhar_card_number
			f.input :phone_number
		end
    
		f.actions
	end


	show do |criminal|
		attributes_table do
			row :name
			row :address
			row :aadhar_card_number
			row :phone_number
			row 'number of crimes' do
				criminal.crimes.count
			end
		end
		panel 'Crimes' do
			table_for criminal.crimes.uniq, class: 'index_table' do
				column :id
				column :name
			end
		end
	end
end
