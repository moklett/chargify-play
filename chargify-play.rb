require 'rubygems'
require 'bundler/setup'
require 'chargify_api_ares'
require 'faker'

Chargify.configure do |c|
  c.subdomain = "klett-test"
  c.api_key = "4zxNG-5jazkVkt_9Nc4-"
end

#s = Chargify::Subscription.create({:product_handle => 'small-plan', :customer_attributes => {}, :payment_profile_attributes => {}})

#puts s.inspect

s = Chargify::Subscription.find(2074964)

result = s.migrate(:product_handle => 'large-plan')
puts result.inspect
