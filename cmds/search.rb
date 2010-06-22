
def run(params)
  require 'open-uri'
  require 'kconv'
  require 'uri'
  puts help if params.size < 2
  search, name = params
  data = open(URI.encode "http://gyazz.com/programs/search.cgi?q=#{search}&name=#{name}").read.toutf8
  urls = data.scan(/href=\"(http:\/\/gyazz\.com\/[^\"]+)/).map{|url|
    URI.decode url.to_s
  }

  puts urls
end

def help
<<EOS
search pages by word
 % gyazz search "WORD" "NAME"
 % gyazz search "hashimoto" "shokai"
EOS
end

