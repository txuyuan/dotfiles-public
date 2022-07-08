local status, lspkind = pcall(require, "lspkind")
if (not status) then return end

lspkind.init({
  -- enables text annotations
  --
  -- default: true
  mode = 'symbol',

  -- default symbol map
  -- can be either 'default' (requires nerd-fonts font) or
  -- 'codicons' for codicon preset (requires vscode-codicons font)
  --
  -- default: 'default'
  preset = 'default',

  -- override preset symbols
  --
  -- default: {}
  symbol_map = {
    Text = "",
    Method = "",
    Function = "",
    Constructor = "",
    Field = "ﰠ",
    Property = "ﰠ",
    Class = "ﴯ",
    Struct = "פּ",
    Interface = "",
    Module = "",
    Variable = "",
    Constant = "",
    Unit = "塞",
    Value = "",
    Enum = "",
    EnumMember = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    Reference = "",
    File = "",
    Folder = "",
    Event = "",
    Operator = "",
    TypeParameter = ""
  },
})
