srv = net.createServer(net.TCP)
srv:listen(80, function(conn) 
	conn:on("receive", function(conn,payload)
		if string.match(payload, "open1") then
			gpio.write(pin1, 0)
			conn:send("\nok\n")
		elseif string.match(payload, "close1") then
			gpio.write(pin1, 1)
			conn:send("\nok\n")
		elseif string.match(payload, "open2") then
			gpio.write(pin2, 0)
			conn:send("\nok\n")
		elseif string.match(payload, "close2") then
			gpio.write(pin2, 1)
			conn:send("\nok\n")
		elseif string.match(payload, "status1") then
			if gpio.read(pin1) == 1 then
				conn:send("\noff\n")
			else
				conn:send("\non\n")
			end
		elseif string.match(payload, "status2") then
			if gpio.read(pin2) == 1 then
				conn:send("\noff\n")
			else
				conn:send("\non\n")
			end
		end
	conn:on("sent", function(conn)
		conn:close()
		end)
	end)
end)
