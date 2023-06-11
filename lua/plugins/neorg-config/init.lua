-- init.lua

require('neorg').setup {
    -- logger = {
    --     level = "trace",
    -- },
    load = {
        ["core.defaults"] = {},
        -- ["bookmarks.bookmark"] = {
        --     config = {
        --         compile_file = "bookmark.norg",
        --         exclude = {},
        --     }
        -- },
        ["core.concealer"] = {
            config = {
                foldlevelstart = "1",
                icon_preset = "diamond",
            },
        },
        ["core.dirman"] = {
            config = {
                workspaces = {
                    documents = "~/Documents",
                    health = "~/Documents/health",
                    career = "~/Documents/career",
                },
                default_workspace = "documents",
            }
        },
        -- ["core.gtd.base"] = {
        --     config = {
        --         workspace = "gtd",
        --     }
        -- },
        ["core.completion"] = {
           config = {
                engine = 'nvim-cmp',
           }
        },
        ["core.qol.toc"] = {
            config = {
                close_split_on_jump = true,
                toc_split_placement = "right",
            }
        },
        ["core.export"] = {},
        ["core.export.markdown"] = {
            config = {
                extensions = "all",
            }
        },
        ["core.integrations.telescope"] = {},
        ["core.presenter"] = {
            config = { -- Note that this table is optional and doesn't need to be provided
                zen_mode = "truezen",
            }
        },
        ["core.journal"] = {
            config = {
                workspace = "home",
                strategy = "nested",
                strategy = "nested",
            }
        },
        ["core.ui.calendar"] = {},
        ["core.summary"] = {},
        ["core.esupports.hop"] = {
        },
    }
}

local neorg_callbacks = require("neorg.callbacks")

neorg_callbacks.on_event("core.keybinds.events.enable_keybinds", function(_, keybinds)
    -- Map all the below keybinds only when the "norg" mode is active
    keybinds.map_event_to_mode("norg", {
        n = { -- Bind keys in normal mode
            { "<localleader>f", "core.integrations.telescope.find_linkable" },
        },

        i = { -- Bind in insert mode
            { "<C-l>", "core.integrations.telescope.insert_link" },
        },
    }, {
        silent = true,
        noremap = true,
    })
end)
