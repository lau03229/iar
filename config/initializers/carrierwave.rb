CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV["AWS_ACCESS_KEY"],                       # required
    :aws_secret_access_key  => ENV["AWS_SECRET_KEY"],                        # required
    :region                 => ENV["AWS_REGION"]                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'iar-test'                     # 
  config.fog_attributes = { :multipart_chunk_size => 104857600 }
end