-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

-- local primary = "#00ff00"
-- local primary = "#67a03f"
-- local primary = "#5eb7ff"

-- Original CursorLineNR was #adb0bb
-- Added 10 (in hexadecimal)
local cursorLnNum = "#bdc0cb"

-- Original color of the fainted line number text #3a3e47
-- It was too dim
-- Added 25 (in hexadecimal) to get "#5f636c"
local faintedText = "#5f636c"
--local xtrafainted = "#4a4e57"
--local xtrafainted = "#4f535c"
local xtrafainted = "#3a3e47"

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "astrodark",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- Normal = { bg = "#000000" },

        -- Original CursorLine was #1e222a, added 3 hexadecimal
        CursorLine = { bg = "#21252d" },
        CursorLineNR = { fg = cursorLnNum },
        LineNR = { fg = faintedText }, -- Brighten line numbers from default

        -- Indent lines
        IblIndent = { fg = faintedText },
        -- Indent line of scope cursor is on
        -- IblScope =

        FoldColumn = { fg = faintedText }, -- The arrow that shows status of a fold
        UfoFoldedEllipsis = { fg = "#ffff33" }, -- Make folded lines stand out
        CursorLineFold = { fg = cursorLnNum }, -- Same as FoldColumn but for the line with cursor

        -- Original HL heading fg colors for AstroDark theme
        -- markup.heading.1.markdown: #dd97f1
        -- markup.heading.2.markdown: #5eb7ff
        -- markup.heading.3.markdown: #4ac2b8
        -- markup.heading.4.markdown: #87c05f
        -- markup.heading.5.markdown: #dfab25
        -- markup.heading.6.markdown: empty

        -- Used these HLs as options for render-markdown plugin.
        -- I modified the plugin so it doesn't flip fg and bg.
        -- This allows me to use underlines for headings with the same fg color
        --["@markup.heading.1.markdown"] = { fg = "#67a03f", bg = "", bold = true },
        ["@markup.heading.1.markdown"] = { fg = "#ffffff", bg = "", bold = true },
        ["@markup.heading.2.markdown"] = { fg = "#77b04f", bg = "", bold = true },
        ["@markup.heading.3.markdown"] = { fg = "#2aa298", bg = "", bold = true },
        ["@markup.heading.4.markdown"] = { fg = "#dfab25", bg = "", bold = true },
        ["@markup.heading.5.markdown"] = { fg = "#5eb7ff", bg = "", bold = true },
        ["@markup.heading.6.markdown"] = { fg = "#dd97f1", bg = "", bold = true },
        --["@markup.heading.6.markdown"] = { fg = "#87c05f", bg = "", bold = true },

        --["@markup.list.markdown"] = { fg = primary, bg = "" },
        --["@markup.list.markdown"] = { fg = faintedText, bg = "" },
        RenderMarkdownBullet = { fg = faintedText, bg = "" },

        -- Make links purple as is convention
        --RenderMarkdownLink = {fg =  "#cd87e1" },
        --RenderMarkdownWikiLink = {fg =  "#cd87e1" },
        ["@markup.link.label.markdown_inline"] = { fg = "#cd87e1" },
        ["@markup.link.markdown_inline"] = { fg = xtrafainted }, -- '[]()' of the link
        ["@markup.link.url.markdown_inline"] = { fg = xtrafainted },

        ["@conceal.markdown_inline"] = { fg = xtrafainted },

        RenderMarkdownInlineHighlight = { fg = "#ffff66", bg = "" },

        -- preformatted text. original was a light red
        ["@markup.raw.markdown_inline"] = { fg = "#ffffbb", bg = "#000000" },

        -- Added 8 (hex) to original CursorLine
        RenderMarkdownCode = { bg = "#2c3038" },
        RenderMarkdownCodeInline = { bg = "#000000" },

        -- Make NOTE comments the same black text as other comment types instead of
        -- the unreadable white text
        TodoBgNOTE = { fg = "#1a1d23", bg = "#00b298" },
      },
      astrodark = { -- a table of overrides/changes when applying the astrotheme theme
        -- Normal = { bg = "#000000" },
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
