module ApplicationHelper

  def validate_phone_number(phome_number)
    phome_number =~ /^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$/
  end
end
