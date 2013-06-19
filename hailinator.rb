require 'twitter'

Twitter.configure do |config|
  config.consumer_key = "S1dTtHshDW8STRhiHpg3UQ"
  config.consumer_secret = "zGaAm9OXTRcs1T6v82OkwfG6QVOusHWpdQUTHHI8o"
  config.oauth_token = "1210807495-WFaEbH7gX2XSN526uCsumZdY3VTrUrPstOTCj34"
  config.oauth_token_secret = "mX1JMl6YbOcvXbGLdyTK4BlrcKtWmAcj2cWG66zW2L4"
end

Twitter.search('hail' 'damage' 'haildamage')