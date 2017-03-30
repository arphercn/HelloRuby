#!/usr/bin/ruby -w

# 有提示警告 Win32API is deprecated after Ruby 1.9.1; use fiddle directly instead
# 解决 http://stackoverflow.com/questions/39051793/can-i-hide-the-warning-message-dl-is-deprecated-please-use-fiddle-in-ruby

require 'mysql2'
 
client = Mysql2::Client.new(
    :host     => '127.0.0.1', # 主机
    :username => 'root',      # 用户名
    :password => 'root',    # 密码
    :database => 'runoob',      # 数据库
    :encoding => 'utf8'       # 编码
    )
# results = client.query("SELECT VERSION()")

results = client.query("SELECT * FROM websites")

results.each do |row|
  puts row
end