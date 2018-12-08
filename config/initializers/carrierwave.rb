require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'
CarrierWave.configure do |config|
  config.cache_dir = "#{Rails.root}/tmp/uploads"
  # config.root = Rails.root.join('tmp') # adding these...
  # config.cache_dir = 'carrierwave' # ...two lines
  #
  # config.fog_credentials = {
  #   :provider               => 'AWS',                        # required
  #   :aws_access_key_id      => '',                        # required
  #   :aws_secret_access_key  => '',                     # required
  #   :region                 => 'ap-northeast-1',                  # optional, defaults to 'us-east-1'
  #   # :host                   => 's3.amazonaws.com',             # optional, defaults to nil
  #   # :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  # }
  # config.fog_directory  = 'railsgirlskozai'                             # required
  # # config.fog_public     = false                                   # optional, defaults to true
  # config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  config.fog_directory  = 'railsgirlskozai'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: '', #ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: '', #ENV['AWS_SECRET_ACCESS_KEY'],
    region: 'ap-northeast-1', # ENV['AWS_REGION'],
    # path_style: true
  }
  config.fog_public     = true
end
