require 'socket'
 
server  = 'irc.freenode.net'
port    = 6669
socket = TCPSocket.open(server, port)
 
nickname = 'SkillcrushBotOMG'
channel  = '#stealthy-pets'
 
socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"
 
while message = socket.gets do
  puts message
 
  if message.match('^PING :')
    server = message.split(':').last
    puts "PONG #{server}"
    socket.puts "PONG #{server}"
  end
end