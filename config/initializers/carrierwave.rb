require 'fog/aws'
require 'carrierwave'

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                             
  config.fog_credentials = {
    :provider                 => 'AWS',
    :aws_access_key_id        => ENV["aws_access_key_id"],
    :aws_secret_access_key    => ENV["aws_secret_access_key"],
    :region                   => ENV['aws_region'],
    
  }
  config.fog_directory = ENV["fog_directory"]                    # required
  
end



# CarrierWave.configure do |config|
#   config.storage    = :aws
#   config.aws_bucket = ENV.fetch('S3_BUCKET_NAME')
#   config.aws_acl    = 'public-read'

#   # Optionally define an asset host for configurations that are fronted by a
#   # content host, such as CloudFront.
 
# # config.asset_host = 'http://example.com'

#   # The maximum period for authenticated_urls is only 7 days.
#   config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7

#   # Set custom options such as cache control to leverage browser caching
#   config.aws_attributes = {
#     expires: 1.week.from_now.httpdate,
#     cache_control: 'max-age=604800'
#   }

#   config.aws_credentials = {
#     access_key_id:     ENV.fetch('AWS_ACCESS_KEY_ID'),
#     secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
#     region:            ENV.fetch('AWS_REGION') # Required
#   }

 
# end 



