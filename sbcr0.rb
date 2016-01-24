page_source = open("samplepage.html", &:read)
dates = page_source.scan(%r!(\d+)年　?(\d)月 ?(\d)日<br />!)
dates[0,4]

name = "yuichiro"
print "#{name}"

url_titles = page_source.scan(%r!^<a href="(.+?)">(.+?)</a><br />!)
url_titles[0,4]

dates[0,2].zip(url_titles[0,2])

zipped_dates = dates[0,2].zip(url_titles[0,2])
puts "zipped dates is "
print "#{zipped_dates[0]}"
