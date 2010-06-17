class Dad < ActiveRecord::Base
  require 'bitly'
  
  validates_presence_of :name
  
  has_attached_file :photo,
                    :storage => :s3, 
                    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
                    :path => ':attachment/:id/:style/:basename.:extension',
                    :bucket => 'daddy'
  
  def self.make_bitly_from(link)
    bitly = Bitly.new("mcmaloney", "R_e671a79e4b4482795dc870aeb4194df6")
    bitly.shorten(link).short_url
  end
end
