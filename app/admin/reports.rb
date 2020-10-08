ActiveAdmin.register Report do
  permit_params do
	  permitted = [:fir_no, :accused_name, :accused_number,:reporter_name,:reporter_number, :is_accused_filing_report, :description,:location,:crime_id, :criminal_ids => []]
	  permitted
  end
  
  form multipart: true do |f|
		f.semantic_errors *f.object.errors.keys
		f.inputs 'Report details' do
			f.input :fir_no
			f.input :accused_name
      f.input :accused_number
      f.input :is_accused_filing_report
      f.input :reporter_name
      f.input :reporter_number
      f.input :description
      f.input :location
      f.input :criminal_ids, as: :tags, collection: Criminal.all
      f.input :crime_id, as: :select2, collection: Crime.all
		end
    
		f.actions
  end
  
  show do |report|
		attributes_table do
			row :fir_no
			row :accused_name
      row :accused_number
      row :is_accused_filing_report
      row :reporter_name
      row :reporter_number
      row :description
      row :location
		end
		panel 'Criminals' do
			table_for report.criminals, class: 'index_table' do
				column :id
				column :name
			end
    end
  end

  before_filter :assign_reporter_details_if_not_present, only: [:create, :update]
  after_filter :assign_crime_to_criminals, only: [:create, :update]
  controller do
    def assign_reporter_details_if_not_present
      if params[:report].present? && params[:report][:is_accused_filing_report]
        params[:report][:reporter_name] = params[:report][:accused_name]
        params[:report][:reporter_number] = params[:report][:accused_number]
      end
    end

    def assign_crime_to_criminals
      criminal_ids = params[:report][:criminal_ids]
      criminal_ids.each do |criminal_id|
        if criminal_id.present?
          CriminalCrime.create(criminal_id: criminal_id.to_i, crime_id: params[:report][:crime_id].to_i)
        end
      end
    end
  end
end
