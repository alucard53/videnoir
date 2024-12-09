-- colors/colorscheme.lua

local whiteFull = "#FFFFFF"

local keywordConst = "#4DA133"
local greenDarkest = "#1F6706"
local greenMid = "#3FA04F"
local greenMidder = "#7FBF7F"
local greenFull = "#00FA00"
local greenLightest = "#C3FFC3"

local colors = {
    -- content here will not be touched
    -- PATCH_OPEN
    Directory = { fg = greenMidder },

    Normal = { fg = "#9F9F9F", bg = "#0B0B0B" },
    ["@punctuation.bracket"] = { link = "Normal" },
    ["@punctuation.delimiter"] = { link = "Normal" },
    ["@punctuation.special"] = { link = "Normal" },

    Boolean = { fg = keywordConst },
    ["@boolean"] = { link = "Boolean" },

    Character = { fg = greenFull },
    ["@character"] = { link = "Character" },

    Comment = { fg = "#606060", italic = true },
    ["@comment"] = { link = "Comment", italic = true },

    Conditional = { fg = "#D6FFAC" },
    ["@keyword.conditional"] = { link = "Conditional" },
    ["@keyword.conditional.ternary"] = { link = "Conditional" },

    Constant = { fg = keywordConst },
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "Constant" },

    Macro = { fg = "#8E6EA6" },
    ["@function.macro"] = { link = "Macro" },
    ["@constant.macro"] = { link = "Macro" },

    Operator = { fg = greenMidder },
    ["@operator"] = { link = "Operator" },

    CursorLine = { bg = "#2F173F" },
    CursorLineNr = { fg = "#A39EFA" },
    Define = { fg = "#8E6EA6" },
    DiagnosticError = { fg = "#FF1A00" },
    ["@comment.error"] = { link = "DiagnosticError" },
    DiagnosticFloatingError = { fg = "#FF1A00" },
    DiagnosticFloatingHint = { fg = "#9ED8FF" },
    DiagnosticFloatingInfo = { fg = "#85EFEF" },
    DiagnosticFloatingOk = { fg = "#ABEDB8" },
    DiagnosticFloatingWarn = { fg = "#E5E619" },
    DiagnosticHint = { fg = "#9ED8FF" },
    ["@comment.hint"] = { link = "DiagnosticHint" },
    DiagnosticInfo = { fg = "#85EFEF" },
    ["@comment.info"] = { link = "DiagnosticInfo" },
    DiagnosticOk = { fg = "#ABEDB8" },
    DiagnosticSignError = { fg = "#FF1A00" },
    DiagnosticSignHint = { fg = "#9ED8FF" },
    DiagnosticSignInfo = { fg = "#85EFEF" },
    DiagnosticSignOk = { fg = "#ABEDB8" },
    DiagnosticSignWarn = { fg = "#E5E619" },
    DiagnosticVirtualTextError = { fg = "#FF1A00" },
    DiagnosticVirtualTextHint = { fg = "#9ED8FF" },
    DiagnosticVirtualTextInfo = { fg = "#85EFEF" },
    DiagnosticVirtualTextOk = { fg = "#ABEDB8" },
    DiagnosticVirtualTextWarn = { fg = "#E5E619" },
    DiagnosticWarn = { fg = "#E5E619" },
    ["@comment.warning"] = { link = "DiagnosticWarn" },
    EndOfBuffer = { fg = "#FA9EBD" },
    Exception = { fg = "#8E6EA6" },

    Float = { link = "Number" },
    ["@float"] = { link = "Number" },

    Function = { link = "Keyword" },
    Identifier = { fg = "#DEDEDE" },

    Include = { fg = greenDarkest },
    ["@keyword.import"] = { link = "Include" },

    Label = { fg = "#8E6EA6" },
    LineNr = { fg = "#E6FFCF" },
    LineNrAbove = { link = "LineNr" },
    LineNrBelow = { link = "LineNr" },
    ModeMsg = { fg = "#F5B2F0" },
    NormalFloat = { fg = "#E0CFED", bg = "None" },

    Number = { fg = "#AAAAAA" },
    ["@number"] = { link = "Number" },

    PreCondit = { fg = "#8E6EA6" },
    PreProc = { fg = "#8E6EA6" },
    Repeat = { fg = "#8E6EA6" },
    Search = { fg = "#333333", bg = "#FFE894" },
    SignColumn = { bg = "None" },
    Special = {},
    Statement = { fg = "#FF0000" },
    StatusLine = { fg = "#FFFFFF", bg = "None" },
    StorageClass = { fg = "#8E6EA6" },

    String = { link = "Character" },
    ["@string"] = { link = "Character" },

    Structure = { link = "Normal" },
    Tag = { fg = keywordConst },
    TermCursor = { fg = "#FFFFFF" },

    Type = { fg = "#FFFFFF", bold = true },
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { fg = greenMid },

    Typedef = { fg = "#8E6EA6" },
    Visual = { fg = whiteFull, bg = greenMid },
    ["@comment.documentation"] = { fg = "#624E6E", italic = true },
    ["@comment.todo"] = { fg = "#000000", bg = "#10B77F", bold = true },
    ["@function"] = { fg = "#909090" },
    ["@function.builtin"] = { fg = "#909090" },
    ["@function.call"] = { fg = "#909090" },

    Keyword = { fg = greenMidder },
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.coroutine"] = { fg = "#8E6EA6" },
    ["@keyword.directive"] = { fg = "#624E6E" },
    ["@keyword.directive.define"] = { link = "@keyword.directive" },
    ["@keyword.exception"] = { link = "Keyword" },
    ["@keyword.function"] = { link = "Keyword" },
    ["@keyword.modifier"] = { fg = greenLightest, bold = true },
    ["@keyword.operator"] = { fg = greenMidder },
    ["@keyword.repeat"] = { fg = greenMidder },
    ["@keyword.return"] = { fg = "#8E6EA6" },

    ["@keyword.type"] = { fg = greenMidder },
    ["@type.definition"] = { link = "Type" },

    ["@variable"] = { fg = "#DEDEDE" },
    ["@variable.builtin"] = { fg = "#DEDEDE" },
    ["@variable.member"] = { fg = greenLightest },
    ["@variable.parameter"] = { fg = "#DEDEDE" },
    ["@variable.parameter.builtin"] = { fg = "#DEDEDE" },
}
-- what color should I pick for comments????

vim.cmd("highlight clear")
vim.cmd("set t_Co=256")
vim.cmd("let g:colors_name='videnoir'")
for group, attrs in pairs(colors) do
    vim.api.nvim_set_hl(0, group, attrs)
end
