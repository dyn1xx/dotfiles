require("hyprspecific")
require("hyprcursor")
require("hyprbinds")

-----------------
---- AUTOSTART ---
-----------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/
hl.on("hyprland.start", function()
    hl.exec_cmd("waybar")
    hl.exec_cmd("hyprcursor")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("mako")
    hl.exec_cmd("nm-applet --indicator")
    hl.exec_cmd("blueman-applet")

    -- Open apps on specific workspaces
    hl.exec_cmd("[workspace 1 silent] keepassxc")
    hl.exec_cmd("[workspace 2 silent] kitty")
    hl.exec_cmd("[workspace 3 silent] firefox")

    -- Set GTK theme
    hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface font-name 'Hack'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
end)

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

hl.env("XDG_DATA_DIRS", "/var/lib/flatpak/exports/share:/home/v/.local/share/flatpak/exports/share:/usr/local/share:/usr/share")

-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
    ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
    },

    general = {
        gaps_in = 5,
        gaps_out = 10,
        border_size = 2,
        col = {
            active_border = "rgb(b4f6c0)",
            inactive_border = "rgba(595959aa)",
        },
        resize_on_border = false,
        allow_tearing = false,
        layout = "dwindle",
    },

    decoration = {
        rounding = 10,
        blur = {
            enabled = false,
        },
        shadow = {
            enabled = true,
        },
    },

    animations = {
        enabled = true,
    },

    dwindle = {
        preserve_split = true,
    },

    master = {
        new_status = "master",
    },

    input = {
        kb_layout = "fi",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",
        follow_mouse = 1,
        sensitivity = 0,
        touchpad = {
            natural_scroll = false,
        },
        tablet = {
            output = "current"
        }
    },
})

-- Animations
hl.curve("myBezier", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.05} } })

hl.animation({ leaf = "windows",     enabled = true, speed = 7,  bezier = "myBezier" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 7,  bezier = "default",   style = "popin 80%" })
hl.animation({ leaf = "border",      enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 8,  bezier = "default" })
hl.animation({ leaf = "fade",        enabled = true, speed = 7,  bezier = "default" })
hl.animation({ leaf = "workspaces",  enabled = false, speed = 3, bezier = "default", style = "fade" })

--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- Suppress maximize events from all apps
hl.window_rule({
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

-- Fix XWayland dragging issues
hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

-- hyprland-run float positioning
hl.window_rule({
    name = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move = "20 monitor_h-120",
    float = true,
})

-- KeePassXC
hl.window_rule({
    name = "keepassxc",
    match = { class = "org.keepassxc.KeePassXC" },
    workspace = "1 silent",
    pseudo = true,
    size = "1600 1300",
})

-- Kitty
hl.window_rule({
    name = "kitty",
    match = { class = "kitty" },
    workspace = "2 silent",
    pseudo = true,
    size = "1600 1300",
})

-- Ghostty
hl.window_rule({
    name = "ghostty",
    match = { class = "com.mitchellh.ghostty" },
    workspace = "2 silent",
    pseudo = true,
    size = "1600 1300",
})

-- Steam
hl.window_rule({
    name = "steam",
    match = { class = "steam" },
    workspace = "8 silent",
})

-- Signal
hl.window_rule({
    name = "signal",
    match = { class = "signal" },
    workspace = "6 silent",
})

-- Discord
hl.window_rule({
    name = "discord",
    match = { class = "discord" },
    workspace = "6 silent",
})

-- FreeCAD
hl.window_rule({
    name = "freecad",
    match = { class = "org.freecad.FreeCAD" },
    workspace = "12 silent",
})

-- Prusa Slicer
hl.window_rule({
    name = "prusa-slicer",
    match = { class = "prusa-slicer" },
    workspace = "13 silent",
})

-- Virt Manager
hl.window_rule({
    name = "virt-manager",
    match = { class = "virt-manager" },
    workspace = "11 silent",
})

-- imv (image viewer)
hl.window_rule({
    name = "imv",
    match = { class = "imv" },
    float = true,
})

-- pavucontrol
hl.window_rule({
    name = "pavucontrol",
    match = { class = "org.pulseaudio.pavucontrol" },
    float = true,
    size = "1100 900",
})

-- Blueman
hl.window_rule({
    name = "blueman-manager",
    match = { class = "blueman-manager" },
    float = true,
    size = "1100 900",
})

-- Helvum
hl.window_rule({
    name = "helvum",
    match = { class = "org.pipewire.Helvum" },
    float = true,
    size = "1100 900",
})

-- XDG Desktop Portal GTK
hl.window_rule({
    name = "xdg-desktop-portal-gtk",
    match = { class = "xdg-desktop-portal-gtk" },
    float = true,
    size = "1100 900",
})

-- Dolphin (no special rules, just named)
hl.window_rule({
    name = "dolphin",
    match = { class = "dolphin" },
})

-- Steam apps / games (fullscreen on workspace 9)
hl.window_rule({
    name = "steamapps",
    match = { class = "^(steam_app.*|tf_linux64|cs2|Isonzo)$" },
    workspace = "9",
    fullscreen = true,
})
