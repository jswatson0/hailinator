require 'twitter'
require 'csv'

Twitter.configure do |config|
  config.consumer_key = "S1dTtHshDW8STRhiHpg3UQ"
  config.consumer_secret = "zGaAm9OXTRcs1T6v82OkwfG6QVOusHWpdQUTHHI8o"
  config.oauth_token = "1210807495-AiQtJExHEUOndQePa7racTkOGnyZk5zYJQ9cuj3"
  config.oauth_token_secret = "3HE8EoRyTjC8rhchhEp7zYqCE1fAsMrs0p7PgXtXek"
end


CSV.open('hailinator.csv', 'wb') do |csv|
	csv << ["handle", "text", "url"]
  Twitter.search('#haildamage').results.map do |status|
    csv << ["#{status.from_user}", "#{status.text}", "twitter.com/#{status.from_user}/statuses/#{status.id}"]
    	#  This junk WORKS!
    # Twitter.favorite(status.id)
    # Twitter.follow("#{status.from_user}")

  end
end
