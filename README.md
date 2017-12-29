# SeventeenMon

SeventeenMon simply help you find location by IP address. 

## Compatibility

I have tested it on Ruby >= 1.9.3. Other versions are not tested but should work on well. Please contact me if not.

## Installation

Add this line to your application's Gemfile:

    gem 'seventeen_mon', git: "git@github.com:limanxian/SeventeenMon.git"
    

And then execute:

    $ bundle


## Usage

### In Ruby
```(ruby)
SM.find_by_ip "119.75.216.20"
# => {:country=>"中国", :province=>"北京", :city=>"北京", :company=>"公司名称", :operator=>"电信"}

SM.find_by_address "http://taobao.com"
# => {:country=>"中国", :province=>"浙江", :city=>"杭州", :company=>"", :operator=>"阿里云/电信/联通/移动/铁通/教育网"}
```

### In Command Line

```(bash)
$ seventeen ip 119.75.216.20
Country:   中国
Province:  北京
City:      北京


$ seventeen seventeen address http://taobao.com
Country:   中国
Province:  浙江
City:      杭州
```

### Data Path

```(ruby)
SM.data_path= "/datapath/ipipnet.dat"
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/seventeen_mom/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Thanks

[高春辉 Paul Gao](http://tool.17mon.cn/) - for his awesome data.