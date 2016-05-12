class RegistrationsController < Devise::RegistrationsController
  def create
	  super
	  
	  gibbon = Gibbon::Request.new(api_key: "00b02c0da1e39a25b290eefbc2a07f15-us13")
	  gibbon.lists('094d924cd2').members.create(body: {email_address: "gookasschinks@gmail.com", status: "subscribed", merge_fields: {FNAME: "First Name", LNAME: "Last Name"}})
  end

 
  private
 
end
