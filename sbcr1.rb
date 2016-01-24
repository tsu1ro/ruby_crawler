require 'cgi'

def parse(page_source)
  dates = page_source.scan(
    %r!(\d+)年 ?(\d)日<br />)
  