require 'twitter'

class TwitterBnb

  def initialize

    # quelques lignes qui enregistrent les clés d'APIs
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.credentials.dig(:twitterapikey)
      config.consumer_secret     = Rails.application.credentials.dig(:twitterapisecret)
      config.access_token        = Rails.application.credentials.dig(:twitteraccesstoken)
      config.access_token_secret = Rails.application.credentials.dig(:twitteraccesssecret)
    end
  end

  def nice
    @client.search('#nice').take(10).each do |tweet|
      @client.update("@#{tweet.user.screen_name}, Vous habitez à Nice ? Vous voulez louez votre bien immobilier sur Airbnb sans avoir à s'en occuper, Bnbmanager le fait pour vous sur http://")
    end
  end

  def frenchriviera
    @client.search('#frenchriviera').take(10).each do |tweet|
      @client.update("@#{tweet.user.screen_name} Vous habitez à Nice ? Vous voulez louez votre bien immobilier sur Airbnb sans avoir à s'en occuper, Bnbmanager le fait pour vous sur http://")
    end
  end
end
