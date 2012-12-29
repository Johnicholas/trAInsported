

--------------------------------
-- Config file for trAInsported.
--------------------------------
-- by Germanunkol

-- Options:
-- -d
-- 


-- Check if game this is running in dedicated server mode:
for k, a in pairs(arg) do
	if a == "-d" or a == "--dedicated" or a == "--server" then
		DEDICATED = true
		arg[k] = nil
		break
	end
end


-- Check if user has given a port number:
for k, a in pairs(arg) do
	if a == "-p" or a == "--port" then
		INVALID_PORT = true
		if type(k) == "number" then
			if arg[k+1] then
				p = tonumber(arg[k+1])
				if p >= 0 and p <= 65535 then
					CL_PORT = p
					INVALID_PORT = false
				end
				arg[k+1] = nil
				arg[k] = nil
			end
		end
		break
	end
end

for k, a in pairs(arg) do
	if a == "--match_time" or a == "-m" then
		INVALID_MATCH_TIME = true
		if type(k) == "number" then
			if arg[k+1] then
				t = tonumber(arg[k+1])
				if t > 10 then
					CL_ROUND_TIME = t
					INVALID_MATCH_TIME = false
				end
				arg[k+1] = nil
				arg[k] = nil
			end
		end
		break
	end
end

for k, a in pairs(arg) do
	if a == "--cooldown" or a == "-c" then
		INVALID_DELAY_TIME = true
		if type(k) == "number" then
			if arg[k+1] then
				t = tonumber(arg[k+1])
				if t >= 0 then
					CL_TIME_BETWEEN_MATCHES = t
					INVALID_DELAY_TIME = false
				end
				arg[k+1] = nil
				arg[k] = nil
			end
		end
		break
	end
end

for k, a in pairs(arg) do
	if a == "--host" or a == "-h" or a == "--ip" then
		INVALID_IP = true
		if type(k) == "number" then
			if arg[k+1] then
				ip = arg[k+1]
				--if ip:find("%d%d?%d?\.%d%d?%d?\.%d%d?%d?\.%d%d?%d?") == 1 or ip == "localhost" then
					CL_SERVER_IP = ip
					INVALID_IP = false
				--end
				arg[k+1] = nil
				arg[k] = nil
			end
		end
		break
	end
end


if not DEDICATED then

	love.conf = function(t)
		t.screen.width = 1960*0.8
		t.screen.height = 1024*0.8
		t.screen.fullscreen = false
		t.title = "trAInsported"        -- The title of the window the game is in (string)
		t.author = "Germanunkol"        -- The author of the game (string)
		t.url = "http://www.indiedb.com/members/germanunkol"
	end
	
else

	love.conf = function(t)
	
		t.screen.width = 50
		t.screen.height = 25
		t.screen.fullscreen = false
		t.title = "trAInsported"        -- The title of the window the game is in (string)
		t.author = "Germanunkol"        -- The author of the game (string)
		t.url = "http://www.indiedb.com/members/germanunkol"
	
		t.modules.joystick = false   -- Enable the joystick module (boolean)
		t.modules.audio = false      -- Enable the audio module (boolean)
		t.modules.keyboard = true   -- Enable the keyboard module (boolean)
		t.modules.event = true      -- Enable the event module (boolean)
		t.modules.image = false      -- Enable the image module (boolean)
		t.modules.graphics = false   -- Enable the graphics module (boolean)
		t.modules.timer = true      -- Enable the timer module (boolean)
		t.modules.mouse = false      -- Enable the mouse module (boolean)
		t.modules.sound = false      -- Enable the sound module (boolean)
		t.modules.physics = false    -- Enable the physics module (boolean)
	end
end
