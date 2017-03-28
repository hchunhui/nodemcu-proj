pin1 = 3
pin2 = 4

gpio.mode(pin1, gpio.OUTPUT)
gpio.mode(pin2, gpio.OUTPUT)
gpio.write(pin1, 1)
gpio.write(pin2, 1)

-- wifi.setmode(wifi.STATIONAP)
wifi.setmode(wifi.STATION)
-- wifi.sta.config("","")
wifi.sta.sleeptype(wifi.LIGHT_SLEEP)
-- cfg      = {}
-- cfg.ssid = "my8266ex"
-- cfg.pwd  = "foofoobarbar"
-- wifi.ap.config(cfg)

dofile("http.lua")
dofile("telnet.lua")

