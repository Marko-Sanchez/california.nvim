local colors = require("california.colors")

local M = {}

function M.setup()

    local theme = {}
    local c = colors.default

    theme.highlights = {
        Foo = { fg = c.cucumber, bg = c.green_brown },

        Comment = { fg = c.orange, style = "italic" }, -- any comment
        ColorColumn = { bg = c.green_brown }, -- used for the columns set with 'colorcolumn'

        Conceal = { fg = c.bluish }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor = { fg = c.orange, bg = c.black }, -- character under the cursor
        lCursor = { fg = c.orange, bg = c.black }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorIM = { fg = c.orange, bg = c.black }, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn = { bg = c.bluish }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine = { bg = c.grey }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory = { fg = c.bluish }, -- directory names (and other special names in listings)
        DiffAdd = { bg = c.green }, -- diff mode: Added line |diff.txt|
        DiffChange = { bg = c.teal }, -- diff mode: Changed line |diff.txt|
        DiffDelete = { bg = c.red1 }, -- diff mode: Deleted line |diff.txt|
        DiffText = { bg = c.yellow }, -- diff mode: Changed text within a changed line |diff.txt|
        EndOfBuffer = { fg = c.green_brown }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        -- TermCursor  = { }, -- cursor in a focused terminal
        -- TermCursorNC= { }, -- cursor in an unfocused terminal
        ErrorMsg = { fg = c.dark_red }, -- error messages on the command line
        VertSplit = { fg = c.cucumber }, -- the column separating vertically split windows
        WinSeparator = { fg = c.black, bold = true }, -- the column separating vertically split windows
        Folded = { fg = c.blue, bg = c.green_brown }, -- line used for closed folds
        FoldColumn = { bg = c.transparent and c.none or c.green_brown, fg = c.orange }, -- 'foldcolumn'
        SignColumn = { bg = options.transparent and c.none or c.green_brown, fg = c.bluish }, -- column where |signs| are displayed
        SignColumnSB = { bg = c.grey, fg = c.bluish }, -- column where |signs| are displayed
        Substitute = { bg = c.red, fg = c.black }, -- |:substitute| replacement text highlighting
        LineNr = { fg = c.bluish }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr = { fg = c.bluish1 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        MatchParen = { fg = c.red, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        ModeMsg = { fg = c.bluish1, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
        MsgArea = { fg = c.black1 }, -- Area for messages and cmdline
        -- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg = { fg = c.blue }, -- |more-prompt|
        NonText = { fg = c.black1 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal = { fg = c.grey, bg = c.transparent and c.none or c.green_brown }, -- normal text
        NormalNC = { fg = c.grey, bg = c.transparent and c.none or c.dim_inactive and c.dark1 or c.green_brown }, -- normal text in non-current windows
        NormalSB = { fg = c.bluish, bg = c.grey }, -- normal text in sidebar
        NormalFloat = { fg = c.cucumber, bg = c.green_brown }, -- Normal text in floating windows.
        FloatBorder = { fg = c.green, bg = c.bluish1 },
        FloatTitle = { fg = c.black, bg = c.black1 },
        Pmenu = { bg = c.grey1, fg = c.green_brown }, -- Popup menu: normal item.
        PmenuSel = { bg = dark1 }, -- Popup menu: selected item.
        PmenuSbar = { bg = grey1 }, -- Popup menu: scrollbar.
        PmenuThumb = { bg = c.green_brown}, -- Popup menu: Thumb of the scrollbar.
        Question = { fg = c.blue }, -- |hit-enter| prompt and yes/no questions
        QuickFixLine = { bg = c.grey, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search = { fg = c.orange }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        IncSearch = { bg = c.bluish1, fg = c.orange, italic = true }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        CurSearch = { link = "IncSearch" },
        SpecialKey = { fg = c.blue }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
        SpellBad = { sp = c.red1, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        SpellCap = { sp = c.yellow, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal = { sp = c.teal, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare = { sp = c.yellow, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        StatusLine = { fg = c.bluish, bg = c.bluish1 }, -- status line of current window
        StatusLineNC = { fg = c.bluish, bg = c.bluish1 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine = { bg = c.brownish, fg = c.black1 }, -- tab pages line, not active tab page label
        TabLineFill = { bg = c.black }, -- tab pages line, where there are no labels
        TabLineSel = { fg = c.black, bg = c.blue }, -- tab pages line, active tab page label
        Title = { fg = c.blue, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
        Visual = { bg = c.green_brown }, -- Visual mode selection
        VisualNOS = { bg = c.green_brown }, -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg = { fg = c.yellow }, -- warning messages
        Whitespace = { fg = c.grey }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        WildMenu = { bg = c.green_brown }, -- current match in 'wildmenu' completion


        -- -- GitSigns
        -- GitSignsAdd = { fg = c.gitSigns.add }, -- diff mode: Added line |diff.txt|
        -- GitSignsChange = { fg = c.gitSigns.change }, -- diff mode: Changed line |diff.txt|
        -- GitSignsDelete = { fg = c.gitSigns.delete }, -- diff mode: Deleted line |diff.txt|

        -- -- Telescope
        -- TelescopeBorder = { fg = c.border_highlight, bg = c.bg_float },
        -- TelescopeNormal = { fg = c.fg, bg = c.bg_float },

        -- -- NvimTree
        -- NvimTreeNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },
        -- NvimTreeWinSeparator = {
        --   fg = options.styles.sidebars == "transparent" and c.border or c.bg_sidebar,
        --   bg = c.bg_sidebar,
        -- },
        -- NvimTreeNormalNC = { fg = c.fg_sidebar, bg = c.bg_sidebar },
        -- NvimTreeRootFolder = { fg = c.blue, bold = true },
        -- NvimTreeGitDirty = { fg = c.git.change },
        -- NvimTreeGitNew = { fg = c.git.add },
        -- NvimTreeGitDeleted = { fg = c.git.delete },
        -- NvimTreeOpenedFile = { bg = c.bg_highlight },
        -- NvimTreeSpecialFile = { fg = c.purple, underline = true },
        -- NvimTreeIndentMarker = { fg = c.fg_gutter },
        -- NvimTreeImageFile = { fg = c.fg_sidebar },
        -- NvimTreeSymlink = { fg = c.blue },
        -- NvimTreeFolderIcon = { bg = c.none, fg = c.blue },
        -- -- NvimTreeFolderName= { fg = c.fg_float },
    }

    return theme
end

return M
