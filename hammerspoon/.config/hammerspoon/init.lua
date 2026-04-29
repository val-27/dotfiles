local mods = { "cmd", "ctrl" }

local function focus(dir)
	return function()
		local win = hs.window.focusedWindow()
		if win then
			if dir == "east" then win:focusWindowEast() end
			if dir == "west" then win:focusWindowWest() end
			if dir == "north" then win:focusWindowNorth() end
			if dir == "south" then win:focusWindowSouth() end
		end
	end
end

hs.hotkey.bind(mods, "right", focus("east"))
hs.hotkey.bind(mods, "l", focus("east"))

hs.hotkey.bind(mods, "left", focus("west"))
hs.hotkey.bind(mods, "h", focus("west"))

hs.hotkey.bind(mods, "up", focus("north"))
hs.hotkey.bind(mods, "k", focus("north"))

hs.hotkey.bind(mods, "down", focus("south"))
hs.hotkey.bind(mods, "j", focus("south"))
