if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
        # Amazon S3用の設定
        :provider              => 'AWS',
        :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
        :aws_access_key_id     => ENV['AKIAIMWGLWH3XGS6IRZA'],
        :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['rooiboss00']
  end
end