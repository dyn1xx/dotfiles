local mainMod = "SUPER"

-----------------------
---- OPENING APPS ----
-----------------------

hl.bind(mainMod .. " + D",       hl.dsp.exec_cmd("rofi -show drun"))
hl.bind(mainMod .. " + Z",       hl.dsp.exec_cmd("rofi -modi emoji -show emoji"))
hl.bind(mainMod .. " + U",       hl.dsp.exec_cmd(os.getenv("HOME") .. "/.local/bin/change_wallpaper"))
hl.bind(mainMod .. " + S",       hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod .. " + C",       hl.dsp.exec_cmd("dolphin"))
hl.bind(mainMod .. " + B",       hl.dsp.exec_cmd("blueman-manager"))
hl.bind(mainMod .. " + V",       hl.dsp.exec_cmd("pavucontrol"))

-----------------------
---- OTHER BINDS ----
-----------------------

hl.bind(mainMod .. " + X",       hl.dsp.window.close())
hl.bind(mainMod .. " + Escape",  hl.dsp.exec_cmd(os.getenv("HOME") .. "/.local/bin/hyprlock_idle"))
hl.bind(mainMod .. " + M",       hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + N",       hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + O",       hl.dsp.window.pseudo())
-- hl.bind(mainMod .. " + I",    hl.dsp.???)  -- was commented out in original

-- Screenshots
hl.bind(mainMod .. " + P",             hl.dsp.exec_cmd('hyprshot -m active -m window -o "' .. os.getenv("HOME") .. '/media/pictures/screenshots"'))
hl.bind(mainMod .. " + SHIFT + P",     hl.dsp.exec_cmd('hyprshot -m region -o "' .. os.getenv("HOME") .. '/media/pictures/screenshots"'))
hl.bind("CTRL + F12",                  hl.dsp.exec_cmd('hyprshot -m active -m window -o "' .. os.getenv("HOME") .. '/media/pictures/screenshots"')) -- steam

-- Toggles
hl.bind(mainMod .. " + Y",             hl.dsp.exec_cmd(os.getenv("HOME") .. "/.local/bin/toggle_hyprsunset"))
hl.bind(mainMod .. " + SHIFT + N",     hl.dsp.exec_cmd(os.getenv("HOME") .. "/.local/bin/toggle_mako"))

--------------------------
---- GLOBAL KEYBINDS ----
--------------------------

-- Pass keys to OBS
hl.bind("CTRL + F10", hl.dsp.pass({ window = "class:^(com\\.obsproject\\.Studio)$" }))
hl.bind("CTRL + F11", hl.dsp.pass({ window = "class:^(com\\.obsproject\\.Studio)$" }))

-- Pass keys to Discord
hl.bind("CTRL + F8",  hl.dsp.pass({ window = "class:^(discord)$" }))
hl.bind("CTRL + F9",  hl.dsp.pass({ window = "class:^(discord)$" }))

-----------------------------------
---- FOCUS: mainMod + hjkl ----
-----------------------------------

hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "d" }))

-------------------------------------
---- MOVE: mainMod + SHIFT + hjkl ----
-------------------------------------

hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "r" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "d" }))

--------------------------------------
---- RESIZE: mainMod + CTRL + hjkl ----
--------------------------------------

-- bindee (repeating) → { repeating = true }
hl.bind(mainMod .. " + CTRL + L", hl.dsp.window.resize({ x =  31, y =   0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + CTRL + H", hl.dsp.window.resize({ x = -30, y =   0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + CTRL + K", hl.dsp.window.resize({ x =   0, y = -30, relative = true }), { repeating = true })
hl.bind(mainMod .. " + CTRL + J", hl.dsp.window.resize({ x =   0, y =  30, relative = true }), { repeating = true })

-----------------------------
---- SWITCH WORKSPACES ----
-----------------------------

hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1  }))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2  }))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3  }))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4  }))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5  }))
hl.bind(mainMod .. " + Q", hl.dsp.focus({ workspace = 6  }))
hl.bind(mainMod .. " + W", hl.dsp.focus({ workspace = 7  }))
hl.bind(mainMod .. " + E", hl.dsp.focus({ workspace = 8  }))
hl.bind(mainMod .. " + R", hl.dsp.focus({ workspace = 9  }))
hl.bind(mainMod .. " + T", hl.dsp.focus({ workspace = 10 }))
hl.bind(mainMod .. " + A", hl.dsp.focus({ workspace = 11 }))
hl.bind(mainMod .. " + F", hl.dsp.focus({ workspace = 12 }))
hl.bind(mainMod .. " + G", hl.dsp.focus({ workspace = 13 }))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 14 }))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 15 }))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 16 }))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 17 }))
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 18 }))

---------------------------------
---- MOVE WINDOW TO WORKSPACE ----
---------------------------------

hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1  }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2  }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3  }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4  }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5  }))
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.window.move({ workspace = 6  }))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.window.move({ workspace = 7  }))
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.window.move({ workspace = 8  }))
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.window.move({ workspace = 9  }))
hl.bind(mainMod .. " + SHIFT + T", hl.dsp.window.move({ workspace = 10 }))
hl.bind(mainMod .. " + SHIFT + A", hl.dsp.window.move({ workspace = 11 }))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.move({ workspace = 12 }))
hl.bind(mainMod .. " + SHIFT + G", hl.dsp.window.move({ workspace = 13 }))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 14 }))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 15 }))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 16 }))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 17 }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 18 }))

-----------------------------------------
---- MOVE/RESIZE WITH MOUSE (bindm) ----
-----------------------------------------

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

--------------------
---- VOLUME ----
--------------------

-- binde (repeating) → { repeating = true }
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(os.getenv("HOME") .. "/.local/bin/volume-notify +5%"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(os.getenv("HOME") .. "/.local/bin/volume-notify -5%"), { repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd('makoctl dismiss -a && notify-send -a "volume" "" && wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle'), { repeating = true })

--------------------------
---- MEDIA CONTROLS ----
--------------------------

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"),       { repeating = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"),   { repeating = true })

----------------------
---- BRIGHTNESS ----
----------------------

hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl s 50+"), { repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 50-"), { repeating = true })
