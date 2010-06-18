class Dad < ActiveRecord::Base
  require 'bitly'
  include ActionView::Helpers::TextHelper
  
  validates_presence_of :name
  
  validates_length_of :description, :maximum => 140
  
  validates_length_of :name, :maximum => 50
  
  validates_less_reverse_captcha
  
  has_attached_file :photo, :styles => {:thumb => "200x200#", :large => "400x400>"},
                    :storage => :s3, 
                    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
                    :path => ':attachment/:id/:style/:basename.:extension',
                    :bucket => 'daddy'
  
  def self.make_bitly_from(link)
    bitly = Bitly.new("mcmaloney", "R_e671a79e4b4482795dc870aeb4194df6")
    bitly.shorten(link).short_url
  end
  
  def to_twitter(link)
    "My+Dad+is+#{self.name}+and+he+#{truncate(self.twitter_description, :length => 50)}+#{Dad.make_bitly_from(link)}"
  end
  
  def twitter_description
    desc = ""
    if self.description.size > 50
      self.description.split(" ").each do |word|
        desc += word
        desc += "+"
      end
      desc.chop
    else
      self.description
    end
  end
end
