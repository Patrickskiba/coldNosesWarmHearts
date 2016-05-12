class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_confirmation_of :password
  
  before_create :add_to_mailchimp

  def add_to_mailchimp
	  gibbon = Gibbon::Request.new(api_key: ENV['api_key'])
    	subscribe = gibbon.lists('094d924cd2').members.create(body: { email_address: self.email, status: "subscribed", double_optin: false, merge_fields: {FNAME: "First Name", LNAME: "Last Name"} })
	  
  end


end
