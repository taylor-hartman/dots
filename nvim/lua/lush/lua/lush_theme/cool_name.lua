-- In cool_name/lua/lush_theme/cool_name.lua

-- require lush
local lush = require("lush")
local hsl = lush.hsl

local black = "#414868"

local red = "#f7768e"

local green = "#73daca"

local yellow = "#e0af68"

local blue = "#7aa2f7"

local magenta = "#bb9af7"

local cyan = "#7dcfff"

local white = "#c0caf5"

-- lush() will parse the spec and
-- return a table containing all color information.
-- We return it for use in other files.
return lush(function()
	return {
		-- Define Vim's Normal highlight group.
		-- You can provide values with hsl/hsluv or anything that responds to `tostring`
		Normal({ bg = "#24283b", fg = blue }),

		-- Make whitespace slightly darker than normal.
		-- you must define Normal before deriving from it.
		--Whitespace({ fg = Normal.bg, bg = Normal.fg }),

		-- Make comments look the same as whitespace, but with italic text
		Comment({ fg = white, gui = "italic" }),

		-- Clear all highlighting for CursorLine
		CursorLine({}),

		Cursor({ gui = "reverse" }), -- Character under the cursor
		-- CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
		-- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
		-- CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		-- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		-- TermCursor     { }, -- Cursor in a focused terminal
		-- TermCursorNC   { }, -- Cursor in an unfocused terminal
		ErrorMstute({ gui = "reverse" }), -- |:substitute| replacement text highlighting
		LineNr({ fg = Normal.fg }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrAbove({ fg = Normal.fg }), -- Line number for when the 'relativenumber' option is set, above the cursor line
		LineNrBelow({ fg = Normal.fg }), -- Line number for when the 'relativenumber' option is set, below the cursor line
		CursorLineNr({ fg = blue, gui = "bold" }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		CursorLineFold({ fg = blue, gui = "bold" }), -- Like FoldColumn when 'cursorline' is set for the cursor line (color of + fold icon in column WHEN cursor is on fold line)
		-- TODO: this is broken
		-- MatchParen     { gui='reverse', bg=TermCursor.bg }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg({ fg = white, gui = "bold" }), -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea        { }, -- Area for messages and cmdline
		-- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg({ fg = green, gui = "bold" }), -- |more-prompt|
		NonText({ fg = green, gui = "bold" }), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		NormalFloat({ fg = Normal.fg, bg = Normal.bg }), -- Normal text in floating windows.
		FloatBorder({ fg = blue }), -- Border of floating windows.
		FloatBorderDark({ fg = yellow }), -- Border of floating windows.
		FloatTitle({ fg = green, gui = "bold" }), -- Title of floating windows.
		NormalNC({ fg = Normal.fg }), -- normal text in non-current windows
		Pmenu({ ctermfg = foreground, ctermbg = background }), -- Popup menu: Normal item.
		PmenuSel({ fg = green, ctermbg = background }), -- Popup menu: Selected item.
		PmenuKind({ fg = blue }), -- Popup menu: Normal item "kind"
		PmenuKindSel({ fg = cyan }), -- Popup menu: Selected item "kind"
		-- TODO these two need to work better
		PmenuExtra({ fg = Normal.fg }), -- Popup menu: Normal item "extra text"
		PmenuExtraSel({ fg = green }), -- Popup menu: Selected item "extra text"
		PmenuSbar({ fg = green }), -- Popup menu: Scrollbar.
		PmenuThumb({ fg = blue, bg = cyan }), -- Popup menu: Thumb of the scrollbar.
		Question({ fg = blue, gui = "bold" }), -- |hit-enter| prompt and yes/no questions
		-- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search({ gui = "reverse" }), -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
		-- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad({ fg = red, gui = "italic,undercurl" }), -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap({ fg = yellow, gui = "undercurl" }), -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal({ fg = magenta, gui = "undercurl" }), -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare({ fg = cyan, gui = "undercurl" }), -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		StatusLine({ fg = magenta, bg = Normal.bg }), -- Status line of current window
		Title({ fg = Normal.fg, gui = "bold" }), -- Titles for output from ":set all", ":autocmd" etc.
		Visual({ gui = "reverse" }), -- Visual mode selection
		VisualNOS({ gui = "reverse" }), -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg({ fg = red }), -- Warning messages
		Whitespace({ bg = Normal.bg.darken }), -- "nbsp", "space", "tab" and "trail" in 'listchars'
		Winseparator({ fg = green }), -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		WildMenu({ fg = green, gui = "bold" }), -- Current match in 'wildmenu' completion
		WinBar({ fg = green, gui = "bold" }), -- Window bar of current window
		WinBarNC({ fg = white }), -- Window bar of not-current windows
		TabLineSel({ bg = Normal.fg, fg = Normal.bg }), -- Tab pages line, not active tab page label
		TabLine({ bg = Normal.bg }),
		TabLineFill({ bg = Normal.bg }),
		Constant({ fg = green }), -- (*) Any constant
		String({ fg = green }), --   A string constant: "this is a string"
		Character({ fg = green }), --   A character constant: 'c', '\n'
		Number({ fg = green }), --   A number constant: 234, 0xff
		Boolean({ fg = green }), --   A boolean constant: TRUE, false
		Float({ fg = green }), --   A floating point constant: 2.3e10

		Identifier({ fg = cyan }), -- (*) Any variable name
		Function({ fg = cyan }), --   Function name (also: methods for classes)

		Statement({ fg = magenta, gui = "bold" }), -- (*) Any statement
		Conditional({ fg = magenta, gui = "bold" }), --   if, then, else, endif, switch, etc.
		Repeat({ fg = magenta, gui = "bold" }), --   for, do, while, etc.
		Label({ fg = magenta, gui = "bold" }), --   case, default, etc.
		Operator({ fg = magenta, gui = "bold" }), --   "sizeof", "+", "*", etc.
		Keyword({ fg = magenta, gui = "bold" }), --   any other keyword
		Exception({ fg = magenta, gui = "bold" }), --   try, catch, throw

		PreProc({ fg = magenta }), -- (*) Generic Preprocessor
		Include({ fg = magenta }), --   Preprocessor #include
		Define({ fg = magenta }), --   Preprocessor #define
		Macro({ fg = magenta }), --   Same as Define
		PreCondit({ fg = magenta }), --   Preprocessor #if, #else, #endif, etc.

		Type({ fg = green }), -- (*) int, long, char, etc.
		StorageClass({ fg = green }), --   static, register, volatile, etc.
		Structure({ fg = green }), --   struct, union, enum, etc.
		Typedef({ fg = green }), --   A typedef

		Special({ fg = blue }), -- (*) Any special symbol
		SpecialChar({ fg = blue }), --   Special character in a constant
		Tag({ fg = blue }), --   You can use CTRL-] on this
		Delimiter({ fg = blue }), --   Character that needs attention
		SpecialComment({ fg = blue }), --   Special things inside a comment (e.g. '\n')
		Debug({ fg = blue }), --   Debugging statements

		-- Cmp colors generic
		CmpItemAbbr({ fg = blue }), -- general unmatched default text
		CmpItemAbbrMatch({ fg = white }), -- text that matches
		CmpItemAbbrMatchFuzzy({ fg = cyan }), -- text that matches indirectly via fuzzy finding
		CmpItemKind({ fg = magenta }), -- color of icon
		-- Cmp colors kind specific
		CmpItemKindText({ fg = white }),
		CmpItemKindMethod({ fg = cyan }),
		CmpItemKindFunction({ fg = cyan }),
		CmpItemKindConstructor({ fg = cyan }),
		CmpItemKindField({ fg = green }),
		CmpItemKindVariable({ fg = green }),
		CmpItemKindClass({ fg = blue }),
		CmpItemKindInterface({ fg = blue }),
		CmpItemKindModule({ fg = blue }),
		CmpItemKindProperty({ fg = green }),
		CmpItemKindUnit({ fg = yellow }),
		CmpItemKindValue({ fg = yellow }),
		CmpItemKindEnum({ fg = yellow }),
		CmpItemKindKeyword({ fg = magenta }),
		CmpItemKindSnippet({ fg = magenta }),
		CmpItemKindColor({ fg = green }),
		CmpItemKindFile({ fg = red }),
		CmpItemKindReference({ fg = red }),
		CmpItemKindFolder({ fg = red }),
		CmpItemKindEnumMember({ fg = red }),
		CmpItemKindConstant({ fg = yellow }),
		CmpItemKindStruct({ fg = yellow }),
		CmpItemKindEvent({ fg = yellow }),
		CmpItemKindOperator({ fg = green }),
		CmpItemKindTypeParameter({ fg = green }),
	}
end)
