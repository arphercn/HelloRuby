#!/usr/bin/ruby -w

# ����ʾ���� Win32API is deprecated after Ruby 1.9.1; use fiddle directly instead
# ��� http://stackoverflow.com/questions/39051793/can-i-hide-the-warning-message-dl-is-deprecated-please-use-fiddle-in-ruby

require 'mysql2'
 
client = Mysql2::Client.new(
    :host     => '127.0.0.1', # ����
    :username => 'root',      # �û���
    :password => 'root',    # ����
    :database => 'runoob',      # ���ݿ�
    :encoding => 'utf8'       # ����
    )
# results = client.query("SELECT VERSION()")

results = client.query("SELECT * FROM websites")

results.each do |row|
  puts row
end