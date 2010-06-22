
def run(params)
  puts "http://gyazz.com/programs/getdata.cgi?name=%E5%A2%97%E4%BA%95%E7%A0%94&title=%E3%82%B5%E3%83%96%E3%82%BC%E3%83%9F/%E9%9B%BB%E5%AD%90%E5%B7%A5%E4%BD%9C&version=2"
end

def help
<<EOS
getdata [URL] [VERSION]
getdata "http://gyazz.com/shokai/test" 3
EOS
end

