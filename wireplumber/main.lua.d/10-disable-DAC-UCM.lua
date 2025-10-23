table.insert (alsa_monitor.rules, {
    matches = {
        {
        -- NOTE: The match string is _not_ a regular expression; '*' will match
        -- to any (even empty) string; '?' matches to any single character.
            { "device.name", "matches", "*Focusrite Scarlett 4i4 USB*" },
            { "device.name", "matches", "*Elgato_4K_X*analog-stereo" }
        },
    },
    apply_properties = { ["api.alsa.use-ucm"] = false }
})