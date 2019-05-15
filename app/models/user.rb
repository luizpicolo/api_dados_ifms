class User
  include Mongoid::Document
  
  field :institution, type: String
  field :login, type: String
  field :password, type: String
end
