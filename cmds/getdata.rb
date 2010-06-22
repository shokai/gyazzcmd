
def run(params)
  require 'open-uri'
  require 'kconv'
  require 'uri'
  name, title, version = params
  version = 1 if !version
  data = open(URI.encode "http://gyazz.com/programs/getdata.cgi?name=#{name}&title=#{title}&version=#{version}").read.toutf8
  lines = data.split(/[\r\n]/)
  lines.shift
  lines.shift
  for line in lines do
    puts line.scan(/(.+) [0-9]+/).first
  end
end

def help
<<EOS
get data
 % gyazz getdata "NAME" "TITLE" "VERSION"
 % gyazz getdata "shokai" "test" 3
EOS
end

