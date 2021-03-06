class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true,
    format: { with: /[^@\s]+@(?:[-a-z0-9]+\.)+[a-z]{2,}/i,
            message: 'format is invalid'}

  validates :password, length: { in: 6...255},
             :on => :create
        
  #Created a separate validation for edit from to allow
  #for password field to be blank         
  validates :password, length: { in: 6...255},
             :on => :update,
             allow_blank: true     

  has_secure_password
  include FriendlyId
  friendly_id :last_name,:use => [:slugged]

  has_many :user_mutual_funds
  has_many :mutual_funds, :through => :user_mutual_funds, dependent: :destroy

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end  

end
