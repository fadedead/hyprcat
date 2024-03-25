return {
    'ObserverOfTime/nvimcord',

    config = function()
        -- NOTE: these are the defaults
        require('nvimcord').setup {
            -- Start the RPC manually (boolean)
            autostart = true,
        }
    end,
}
