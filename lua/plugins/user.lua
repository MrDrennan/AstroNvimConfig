-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- NOTE: I edited the file of the Astonvim configured heirline plugin on line 123 at
  -- /home/chad/.local/share/nvim/lazy/AstroNvim/lua/astronvim/plugins/heirline.lua
  -- I moved foldcolumn to the end to make fold column appear on the very right

  {
    -- Finally worked after adding .nvim to the end
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {

      win_options = { conceallevel = { rendered = 0 } },

      heading = {

        -- enabled = false,
        sign = false,
        --icons = { "󰉫 ", "󰉬  ", "󰉭   ", "󰉮    ", "󰉯     ", "󰉰      " },
        icons = { "  ", "   ", "    ", "     ", "      ", "       " },
        position = "overlay",
        --backgrounds = { "RendrMDLineH1" },

        backgrounds = {
          "@markup.heading.1.markdown",
          "@markup.heading.2.markdown",
          "@markup.heading.3.markdown",
          "@markup.heading.4.markdown",
          "@markup.heading.5.markdown",
          "@markup.heading.6.markdown",
        },
        -- Center H1 heading
        width = "block",
        left_margin = { 0.5, 0, 1, 2, 3, 4 },

        right_pad = { 2, 0, 0, 0, 0, 0 },
        --right_pad = { 0.17, 3, 4, 5, 6, 7 },
        --right_pad = { 2, 3, 4, 5, 6, 7 },
        --right_pad = { 2, 7, 6, 5, 4, 3 },
        --left_pad = { 0.17, 0, 1, 2, 3, 4 },
        left_pad = { 0, 0, 0, 0, 0, 0 },
        min_width = { 0, 48, 40, 32, 24, 16 },
        --min_width = { 0, 0, 0, 0, 0, 0 },

        -- I wanted underline border w heading fg color but only gets them from heading bg colors
        -- So edited the plugin in the below file on the following lines
        -- ~/.local/share/nvim/lazy/render-markdown.nvim/lua/render-markdown/render/heading.lua
        -- edited between lines line 246 and line 255
        border = true,
        below = "⎺",
        above = "",
      },

      bullet = {

        -- icons = { "✦", "✧" },
        -- highlight = "@markup.link.label.markdown_inline",
        -- highlight = "@markup.list.markdown",
        --icons = { "●", "○" },
        icons = { "⚫", "⚪" },
        --icons = { "⚫" },
        --highlight = "@markup.list.markdown",
      },

      checkbox = {

        bullet = true,
        right_pad = 0,

        unchecked = {
          icon = "",
        },

        checked = {
          icon = "",
          scope_highlight = "LineNR",
        },

        custom = {
          --todo = { raw = "[-]", rendered = "󰥔", highlight = "Blue", scope_highlight = "Special" },
          todo = { raw = "[-]", rendered = "", highlight = "LineNR", scope_highlight = "TodoCheckmark" },
        },
      },

      link = {
        enabled = false,

        -- Removed spaces after icons
        -- image = "󰥶",
        -- email = "󰀓",
        -- hyperlink = "󰌹",
        -- wiki = { icon = "󱗖", highlight = "RenderMarkdownWikiLink" },
        -- custom = {
        --   web = { pattern = "^http", icon = "󰌹" },
        --   youtube = { pattern = "youtube%.com", icon = "󰗃" },
        --   github = { pattern = "github%.com", icon = "󰊤" },
        --   neovim = { pattern = "neovim%.io", icon = "" },
        --   stackoverflow = { pattern = "stackoverflow%.com", icon = "󰓌" },
        --   discord = { pattern = "discord%.com", icon = "󰙯" },
        --   reddit = { pattern = "reddit%.com", icon = "󰑍" },
        -- },
      },

      -- Make quote line go all the way down
      -- Problem: The line will cover over the content instead of indenting
      -- Might be able to get it to work if I can add the ">" char as to the
      -- formatlistpat neovim config option
      quote = { repeat_linebreak = true },

      code = {
        sign = false,
        language_name = false,
        width = "block",
        --min_width = 50,
        min_width = 70,
      },
      sign = { enabled = false },
    },
  },
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.buttons.val = {
        --opts.button("h", "  Say Hi", ':echo "Hello World!"<CR>'),

        -- Distinct icons
        opts.button("LDR f o", "  Recent  "),
        opts.button("LDR n  ", "󱇬  New  "),
        opts.button("LDR f f", "  Find File  "),
        opts.button("LDR f w", "󰬁  Find Word  "),
        opts.button("LDR f '", "  Bookmarks  "),
        opts.button("LDR S l", "  Last Session  "),
      }

      opts.section.header.val = {

        "                                         o8o",
        "                                         `\"'",
        "m,pmmqa,  .oP*Ya   ,pP*Wq. ooooo   oooo oooo  ooo. .oo.  .oo.",
        "M7    ?M ,7    `b .W`   `W. '888. .88'  `888  `888P\"Y88bP\"Y88b",
        'M|    |M :("""""" :(     ):  \'888,88\'    888   888   888   888',
        "M|    |M `A     a 'A     A`   '8887      888   888   888   888",
        "M|    |M  `Ybmd7'  `Ybmd7'     '8'      o888o o888o o888o o888o",
      }

      -- More button arrangements folded under here
      --[[

      -- Collected icons
      --opts.button("LDR f o", "󰈢󰈙󱀲󰪶  Recents  "),
      --opts.button("LDR n  ", "󰻭󰜅󱇬󰌴󰜄󱪝  New File  "),
      --opts.button("LDR f f", "󰈞󰮗󰱽  Find File  "),
      --opts.button("LDR f w", "󰈬󰰭󰈭T󰬁󰊄󰰤󰬄󰸲󱌯  Find Word  "),
      --opts.button("LDR f '", "󰸖 Bookmarks  "),
      --opts.button("LDR S l", "  Last Session  "),

      -- Outlined icons
      -- opts.button("LDR f o", "󱀲  Recents  "),
      -- opts.button("LDR n  ", "  New File  "),
      -- opts.button("LDR f f", "󰮗  Find File  "),
      -- opts.button("LDR f w", "  Find Word  "),
      -- opts.button("LDR f '", "  Bookmarks  "),
      -- opts.button("LDR S l", "  Last Session  "),

      -- Filled icons
      -- opts.button("LDR f o", "󰈢  Recents  "),
      -- opts.button("LDR n  ", "  New File  "),
      -- opts.button("LDR f f", "󰈞  Find File  "),
      -- opts.button("LDR f w", "󰬁  Find Word  "),
      -- opts.button("LDR f '", "  Bookmarks  "),
      -- opts.button("LDR S l", "  Last Session  "),
      ]]

      -- More headers folded under here
      --[[
      -- opts.section.header.val = {
      --   " █████  ███████ ████████ ██████   ██████",
      --   "██   ██ ██         ██    ██   ██ ██    ██",
      --   "███████ ███████    ██    ██████  ██    ██",
      --   "██   ██      ██    ██    ██   ██ ██    ██",
      --   "██   ██ ███████    ██    ██   ██  ██████",
      --   " ",
      --   "    ███    ██ ██    ██ ██ ███    ███",
      --   "    ████   ██ ██    ██ ██ ████  ████",
      --   "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
      --   "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
      --   "    ██   ████   ████   ██ ██      ██",
      -- }

      -- opts.section.header.val = {
      --   " ███▄    █  ▓█████ ▒█████   ██▒   █▓  ██▓ ███▄ ▄███▓",
      --   " ██ ▀█   █  ▓█   ▀▒██▒  ██▒▓██░   █▒▒▓██▒▓██▒▀█▀ ██▒",
      --   "▓██  ▀█ ██▒ ▒███  ▒██░  ██▒ ▓██  █▒░▒▒██▒▓██    ▓██░",
      --   "▓██▒  ▐▌██▒ ▒▓█  ▄▒██   ██░  ▒██ █░░░░██░▒██    ▒██",
      --   "▒██░   ▓██░▒░▒████░ ████▓▒░   ▒▀█░  ░░██░▒██▒   ░██▒",
      --   "░ ▒░   ▒ ▒ ░░░ ▒░ ░ ▒░▒░▒░    ░ ▐░   ░▓  ░ ▒░   ░  ░",
      --   "░ ░░   ░ ▒░░ ░ ░    ░ ▒ ▒░    ░ ░░  ░ ▒ ░░  ░      ░",
      --   "   ░   ░ ░     ░  ░ ░ ░ ▒        ░  ░ ▒ ░░      ░",
      --   "         ░ ░   ░      ░ ░        ░    ░         ░",
      -- }

      -- opts.section.header.val = {
      --
      --   "                                          ,,",
      --   "`7MN.   `7MF'                             db ",
      --   "  MMN.    M",
      --   "  M YMb   M  .gP\"Ya   ,pW\"Wq.`7M'   `MF'`7MM  `7MMpMMMb.pMMMb.",
      --   "  M  `MN. M ,M'   Yb 6W'   `Wb VA   ,V    MM    MM    MM    MM",
      --   '  M   `MM.M 8M"""""" 8M     M8  VA ,V     MM    MM    MM    MM',
      --   "  M     YMM YM.    , YA.   ,A9   VVV      MM    MM    MM    MM",
      --   ".JML.    YM  `Mbmmd'  `Ybmd9'     W     .JMML..JMML  JMML  JMML.",
      -- }
      --
      -- opts.section.header.val = {
      --   "      ::::    ::: :::::::::: ::::::::  :::     ::: :::::::::::   :::   :::",
      --   "     :+:+:   :+: :+:       :+:    :+: :+:     :+:     :+:      :+:+: :+:+:",
      --   "    :+:+:+  +:+ +:+       +:+    +:+ +:+     +:+     +:+     +:+ +:+:+ +:+",
      --   "   +#+ +:+ +#+ +#++:++#  +#+    +:+ +#+     +:+     +#+     +#+  +:+  +#+",
      --   "  +#+  +#+#+# +#+       +#+    +#+  +#+   +#+      +#+     +#+       +#+",
      --   " #+#   #+#+# #+#       #+#    #+#   #+#+#+#       #+#     #+#       #+#",
      --   "###    #### ########## ########      ###     ########### ###       ###",
      -- }

      -- opts.section.header.val = {
      --   " ▐ ▄ ▄▄▄ .                ██",
      --   "•█▌▐█▀▄.▀· ▄█▀▄ ▄▄▄▄ ▄▄▄ ▄▄▄  ▄▄ ▄▄ ▄▄",
      --   "▐█▐▐▌▐▀▀▪▄▐█▌.▐▌ ▀█▄  █   ██   ██ ██ ██",
      --   "██▐█▌▐█▄▄▌▐█▌.▐▌  ▀█▄█    ██   ██ ██ ██",
      --   "▀▀ █▪ ▀▀▀  ▀█▄▀▪   ▀█    ▄██▄ ▄██ ██ ██▄",
      -- }


      -- opts.section.header.val = {
      --   "        ,               .",
      --   "     .~YJ^              J^.",
      --   "   .!J55YJ!.            55?^.",
      --   " .~Y55YYJJY7,           YYYYJ^.",
      --   "^!7?YYYYJJJJJ^          YYYYYYJ^",
      --   "!7!!7JYYJJJJJJ!.        YJJJJJY?",
      --   "!!!!!!?YJJJJJJJ7.       JJJJJJJ?",
      --   "!!!!!!!7JJ?????J?^      JJJJJJJ7",
      --   "!!!!!!!!^7???????J!.    JJJJJ?J7",
      --   "!!!!!!!!  !????????7.   J??????7",
      --   "!~~~~~~~   ^?????????~  ???????7",
      --   "~~~~~~~~    '7????????!,???????7",
      --   "~~~~~~~~      ~??77777???7777??7",
      --   "~~~~~~~~       ^7?77777?J?77777!",
      --   "~~~~~~~~        '!77777????7777!",
      --   "^~~~~~~~         '^77777????77!^",
      --   " :^^~~~^           '!777?????^",
      --   "   ::^^^            '~77???^",
      --   "      :^              ^7?^",
      --   "       '               '",
      -- }
      ]]
      return opts
    end,
  },
  --[[
  -- == Examples of Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- == Examples of Overriding Plugins ==

  -- further customize the options set by the community for catppuccin
  { 
    "catppuccin",
    opts = {
      integrations = {
        sandwich = false,
        noice = true,
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        cmp = true,
        overseer = true,
        lsp_trouble = true,
        rainbow_delimiters = true,
      },
    },
  },


  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
  ]]
  -- End of examples
}
