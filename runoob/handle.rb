#!/usr/bin/ruby
 
# aFile = File.new("input.txt", "r+")
# if aFile
   # aFile.syswrite("ABCDEF")
   # aFile.rewind
   # aFile.each_byte {|ch| putc ch; putc ?. }
# else
   # puts "Unable to open file!"
# end

 
# arr = IO.readlines("input.txt")
# puts arr[0]
# puts arr[1]

# IO.foreach("input.txt"){|block| puts block}

#File.rename('text1.txt','text2.txt')

#File.delete('text2.txt')

def promptAndGet(prompt)
   print prompt
   res = readline.chomp
   throw :quitRequested if res == "!"
   return res
end
 
catch :quitRequested do
   name = promptAndGet("Name: ")
   age = promptAndGet("Age: ")
   sex = promptAndGet("Sex: ")
   # ..
   # 处理信息
end
promptAndGet("Name:")